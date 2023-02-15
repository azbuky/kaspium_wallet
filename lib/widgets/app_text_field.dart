import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class TextFieldButton extends ConsumerWidget {
  final IconData? icon;
  final Widget? widget;
  final void Function()? onPressed;

  const TextFieldButton({
    Key? key,
    this.icon,
    this.widget,
    this.onPressed,
  })  : assert(icon != null || widget != null),
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      height: 48,
      width: 48,
      child: TextButton(
        style: widget != null
            ? styles.tokenTextFieldButtonStyle
            : styles.appIconButtonStyle,
        onPressed: onPressed,
        child: widget ?? Icon(icon, size: 20, color: theme.primary),
      ),
    );
  }
}

class AppTextField extends ConsumerWidget {
  final TextAlign textAlign;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final Color? cursorColor;
  final Brightness keyboardAppearance;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final int? maxLines;
  final bool autocorrect;
  final String? hintText;
  final TextFieldButton? prefixButton;
  final TextFieldButton? suffixButton;
  final bool? fadePrefixOnCondition;
  final bool? prefixShowFirstCondition;
  final bool? fadeSuffixOnCondition;
  final bool? suffixShowFirstCondition;
  final EdgeInsetsGeometry padding;
  final Widget? overrideTextFieldWidget;
  final int buttonFadeDurationMs;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;
  final double topMargin;
  final double? leftMargin;
  final double? rightMargin;
  final TextStyle? style;
  final bool obscureText;
  final bool autofocus;
  final bool enableInteractiveSelection;

  AppTextField({
    this.focusNode,
    this.controller,
    this.cursorColor,
    this.inputFormatters,
    this.textInputAction,
    this.textCapitalization,
    this.hintText,
    this.prefixButton,
    this.suffixButton,
    this.fadePrefixOnCondition,
    this.prefixShowFirstCondition,
    this.fadeSuffixOnCondition,
    this.suffixShowFirstCondition,
    this.overrideTextFieldWidget,
    this.keyboardType,
    this.onSubmitted,
    this.onChanged,
    this.style,
    this.leftMargin,
    this.rightMargin,
    this.obscureText = false,
    this.textAlign = TextAlign.center,
    this.keyboardAppearance = Brightness.dark,
    this.autocorrect = true,
    this.maxLines = 1,
    this.padding = EdgeInsets.zero,
    this.buttonFadeDurationMs = 100,
    this.topMargin = 0,
    this.autofocus = false,
    this.enableInteractiveSelection = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      margin: EdgeInsets.only(
        left: leftMargin ?? MediaQuery.of(context).size.width * 0.105,
        right: rightMargin ?? MediaQuery.of(context).size.width * 0.105,
        top: topMargin,
      ),
      padding: padding,
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(25),
      ),
      child: overrideTextFieldWidget == null
          ? Stack(
              alignment: AlignmentDirectional.center,
              children: [
                TextField(
                  enableInteractiveSelection: enableInteractiveSelection,
                  textAlign: textAlign,
                  keyboardAppearance: keyboardAppearance,
                  autocorrect: autocorrect,
                  maxLines: maxLines,
                  focusNode: focusNode,
                  controller: controller,
                  cursorColor: cursorColor ?? theme.primary,
                  inputFormatters: inputFormatters,
                  textInputAction: textInputAction,
                  textCapitalization:
                      textCapitalization ?? TextCapitalization.none,
                  keyboardType: keyboardType,
                  obscureText: obscureText,
                  autofocus: autofocus,
                  onSubmitted: onSubmitted != null
                      ? onSubmitted
                      : (text) {
                          if (textInputAction == TextInputAction.done) {
                            FocusScope.of(context).unfocus();
                          }
                        },
                  onChanged: onChanged,
                  style: style,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: styles.textStyleAppTextFieldHint,
                    prefixIcon: prefixButton == null
                        ? const SizedBox()
                        : const SizedBox(width: 48),
                    suffixIcon: suffixButton == null
                        ? const SizedBox()
                        : const SizedBox(width: 48),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fadePrefixOnCondition != null && prefixButton != null
                        ? AnimatedCrossFade(
                            duration: Duration(
                              milliseconds: buttonFadeDurationMs,
                            ),
                            firstChild: prefixButton!,
                            secondChild:
                                const SizedBox(width: 48),
                            crossFadeState: prefixShowFirstCondition!
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                          )
                        : prefixButton ?? const SizedBox(),
                    fadeSuffixOnCondition != null && suffixButton != null
                        ? AnimatedCrossFade(
                            duration:
                                Duration(milliseconds: buttonFadeDurationMs),
                            firstChild: suffixButton!,
                            secondChild:
                                const SizedBox(width: 48),
                            crossFadeState: suffixShowFirstCondition!
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                          )
                        : suffixButton ?? const SizedBox()
                  ],
                ),
              ],
            )
          : overrideTextFieldWidget,
    );
  }
}
