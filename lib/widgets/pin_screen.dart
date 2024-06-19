import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../util/pin_lockout.dart';
import 'pin_screen_button.dart';

enum PinOverlayType { NEW_PIN, ENTER_PIN }

class ShakeCurve extends Curve {
  @override
  double transform(double t) {
    //t from 0.0 to 1.0
    return sin(t * 2.5 * pi);
  }
}

class PinScreen extends ConsumerStatefulWidget {
  final PinOverlayType type;
  final String? expectedPin;
  final String description;

  const PinScreen(
    this.type, {
    this.description = '',
    this.expectedPin = '',
  });

  @override
  _PinScreenState createState() => _PinScreenState();
}

class _PinScreenState extends ConsumerState<PinScreen>
    with SingleTickerProviderStateMixin {
  static const int MAX_ATTEMPTS = 5;

  AppLocalizations get l10n => l10nOf(context);

  int _pinLength = 6;
  final double buttonSize = 100;

  // Stateful data
  late List<IconData> _dotStates;
  String _pin = '';
  String _pinConfirmed = '';

  // true if pin has been entered once, false if not entered once
  late bool _awaitingConfirmation;
  late String _header;

  // Invalid animation
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize list all empty
    if (widget.type == PinOverlayType.ENTER_PIN) {
      _header = l10n.pinEnterTitle;
      _pinLength = widget.expectedPin!.length;
    } else {
      _header = l10n.pinCreateTitle;
    }
    _dotStates = List.filled(_pinLength, AppIcons.dotemtpy);
    _awaitingConfirmation = false;
    _pin = '';
    _pinConfirmed = '';
    // Get adjusted failed attempts
    final vault = ref.read(vaultProvider);
    final pinLockout = PinLockout(vault);

    // Set animation
    _controller = AnimationController(
      duration: const Duration(milliseconds: 350),
      vsync: this,
    );
    final curve = CurvedAnimation(
      parent: _controller,
      curve: ShakeCurve(),
    );
    _animation = Tween(begin: 0.0, end: 25.0).animate(curve)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          if (widget.type == PinOverlayType.ENTER_PIN) {
            pinLockout.incrementUnlockAttempts().then((failedAttempts) {
              if (failedAttempts >= MAX_ATTEMPTS) {
                setState(() {
                  _controller.value = 0;
                });
                // TODO - check logic here
                pinLockout
                    .updateLockDate()
                    .then((_) => appRouter.lockoutkWithTransition(context));
              } else {
                setState(() {
                  _pin = '';
                  _header = l10n.pinInvalid;
                  _dotStates = List.filled(_pinLength, AppIcons.dotemtpy);
                  _controller.value = 0;
                });
              }
            });
          } else {
            setState(() {
              _awaitingConfirmation = false;
              _dotStates = List.filled(_pinLength, AppIcons.dotemtpy);
              _pin = '';
              _pinConfirmed = '';
              _header = l10n.pinConfirmError;
              _controller.value = 0;
            });
          }
        }
      })
      ..addListener(() {
        setState(() {
          // the animation object’s value is the changed state
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Set next character in the pin set
  /// return true if all characters entered
  bool _setCharacter(String character) {
    if (_awaitingConfirmation) {
      setState(() {
        _pinConfirmed = _pinConfirmed + character;
      });
    } else {
      setState(() {
        _pin = _pin + character;
      });
    }
    for (int i = 0; i < _dotStates.length; i++) {
      if (_dotStates[i] == AppIcons.dotemtpy) {
        setState(() {
          _dotStates[i] = AppIcons.dotfilled;
        });
        break;
      }
    }
    if (_dotStates.last == AppIcons.dotfilled) {
      return true;
    }
    return false;
  }

  void _backSpace() {
    if (_dotStates[0] != AppIcons.dotemtpy) {
      late int lastFilledIndex;
      for (int i = 0; i < _dotStates.length; i++) {
        if (_dotStates[i] == AppIcons.dotfilled) {
          if (i == _dotStates.length ||
              _dotStates[i + 1] == AppIcons.dotemtpy) {
            lastFilledIndex = i;
            break;
          }
        }
      }
      setState(() {
        _dotStates[lastFilledIndex] = AppIcons.dotemtpy;
        if (_awaitingConfirmation) {
          _pinConfirmed = _pinConfirmed.substring(0, _pinConfirmed.length - 1);
        } else {
          _pin = _pin.substring(0, _pin.length - 1);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    void onKeyTap(String key) {
      if (_controller.status == AnimationStatus.forward ||
          _controller.status == AnimationStatus.reverse) {
        return;
      }
      if (_setCharacter(key)) {
        final hapticUtil = ref.read(hapticUtilProvider);
        final vault = ref.read(vaultProvider);
        final pinLockout = PinLockout(vault);
        // Mild delay so they can actually see the last dot get filled
        Future.delayed(Duration(milliseconds: 50), () async {
          if (widget.type == PinOverlayType.ENTER_PIN) {
            // Pin is not what was expected
            if (_pin != widget.expectedPin) {
              hapticUtil.error();
              _controller.forward();
            } else {
              await pinLockout.resetUnlockAttempts();
              appRouter.pop(context, withResult: true);
            }
          } else {
            if (!_awaitingConfirmation) {
              // Switch to confirm pin
              setState(() {
                _awaitingConfirmation = true;
                _dotStates = List.filled(_pinLength, AppIcons.dotemtpy);
                _header = l10n.pinConfirmTitle;
              });
            } else {
              // First and second pins match
              if (_pin == _pinConfirmed) {
                appRouter.pop(context, withResult: _pin);
              } else {
                hapticUtil.error();
                _controller.forward();
              }
            }
          }
        });
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(builder: (context, constraints) {
        final size = Size(constraints.maxWidth, constraints.maxHeight);
        return Container(
          constraints: BoxConstraints.expand(),
          child: Material(
            color: theme.backgroundDark,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.1),
                  child: Column(
                    children: [
                      // Header
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        child: AutoSizeText(
                          _header,
                          style: styles.textStylePinScreenHeaderColored,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          stepGranularity: 0.1,
                        ),
                      ),
                      // Descripttion
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        child: AutoSizeText(
                          widget.description,
                          style: styles.textStyleParagraph,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          stepGranularity: 0.1,
                        ),
                      ),
                      // Dots
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          start: size.width * 0.25 + _animation.value,
                          end: size.width * 0.25 - _animation.value,
                          top: size.height * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            for (int i = 0; i < _pinLength; i++)
                              Icon(
                                _dotStates[i],
                                color: theme.primary,
                                size: 20,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: size.width * 0.07,
                      right: size.width * 0.07,
                      bottom: size.height * 0.05,
                      top: size.height * 0.05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: size.height * 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              PinScreenButton(text: '1', onTap: onKeyTap),
                              PinScreenButton(text: '2', onTap: onKeyTap),
                              PinScreenButton(text: '3', onTap: onKeyTap),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: size.height * 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              PinScreenButton(text: '4', onTap: onKeyTap),
                              PinScreenButton(text: '5', onTap: onKeyTap),
                              PinScreenButton(text: '6', onTap: onKeyTap),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: size.height * 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              PinScreenButton(text: '7', onTap: onKeyTap),
                              PinScreenButton(text: '8', onTap: onKeyTap),
                              PinScreenButton(text: '9', onTap: onKeyTap),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: size.height * 0.009),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: buttonSize, width: buttonSize),
                              PinScreenButton(text: '0', onTap: onKeyTap),
                              Container(
                                height: buttonSize,
                                width: buttonSize,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(200),
                                  highlightColor: theme.primary15,
                                  splashColor: theme.primary30,
                                  onTap: _backSpace,
                                  child: Container(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Icon(
                                      Icons.backspace,
                                      color: theme.primary,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
