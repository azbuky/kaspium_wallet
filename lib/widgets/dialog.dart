import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../util/caseconverter.dart';
import 'app_simpledialog.dart';

class AppDialogs {
  static void showInProgressDialog(
    BuildContext context,
    String title,
    String content, {
    Widget? contentWidget,
    String? cancelText,
    Function? onCancel,
  }) {
    showAppDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => WillPopScope(
        onWillPop: () async => false,
        child: Consumer(builder: (context, ref, _) {
          final l10n = ref.watch(l10nProvider);
          final styles = ref.watch(stylesProvider);

          final contentPadding = contentWidget != null
              ? const EdgeInsets.only(top: 20, left: 20, right: 20)
              : const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 24);

          return AppAlertDialog(
            title: Text(title, style: styles.textStyleButtonPrimaryOutline),
            contentPadding: contentPadding,
            content: SingleChildScrollView(
              child: contentWidget ??
                  Text(content, style: styles.textStyleParagraph),
            ),
            actions: onCancel != null
                ? [
                    TextButton(
                      style: styles.dialogButtonStyle,
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 100),
                        child: Text(
                          cancelText ?? l10n.cancel.toUpperCase(),
                          style: styles.textStyleDialogButtonText,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                        onCancel.call();
                      },
                    ),
                  ]
                : null,
          );
        }),
      ),
    );
  }

  static void showInfoDialog(
    BuildContext context,
    String title,
    String content, {
    Widget? contentWidget,
    String? closeText,
    Function? onClose,
  }) {
    showAppDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => WillPopScope(
        onWillPop: () async => false,
        child: Consumer(builder: (context, ref, _) {
          final l10n = ref.watch(l10nProvider);
          final styles = ref.watch(stylesProvider);

          final contentPadding = contentWidget != null
              ? const EdgeInsets.only(top: 20, left: 20, right: 20)
              : const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 24);

          return AppAlertDialog(
            title: Text(title, style: styles.textStyleButtonPrimaryOutline),
            contentPadding: contentPadding,
            content: SingleChildScrollView(
              child: contentWidget ??
                  Text(content, style: styles.textStyleParagraph),
            ),
            actions: [
              TextButton(
                style: styles.dialogButtonStyle,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 100),
                  child: Text(
                    closeText ?? l10n.close.toUpperCase(),
                    style: styles.textStyleDialogButtonText,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  onClose?.call();
                },
              ),
            ],
          );
        }),
      ),
    );
  }

  static void showConfirmDialog(
    BuildContext context,
    String title,
    String content,
    String buttonText,
    Function onPressed, {
    Widget? contentWidget,
    String? cancelText,
    Function? cancelAction,
  }) {
    showAppDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Consumer(builder: (context, ref, _) {
          if (cancelText == null) {
            final l10n = ref.watch(l10nProvider);
            cancelText = l10n.cancel.toUpperCase();
          }
          final styles = ref.watch(stylesProvider);

          final contentPadding = contentWidget != null
              ? const EdgeInsets.only(top: 20, left: 20, right: 20)
              : const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 24);

          return AppAlertDialog(
            title: Text(
              title,
              style: styles.textStyleButtonPrimaryOutline,
            ),
            contentPadding: contentPadding,
            content: SingleChildScrollView(
              child: contentWidget ??
                  Text(content, style: styles.textStyleParagraph),
            ),
            actions: [
              TextButton(
                style: styles.dialogButtonStyle,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 120),
                  child: Text(
                    cancelText!,
                    style: styles.textStyleDialogButtonText,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  cancelAction?.call();
                },
              ),
              TextButton(
                style: styles.dialogButtonStyle,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 120),
                  child: Text(
                    buttonText,
                    style: styles.textStyleDialogButtonText,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  onPressed();
                },
              ),
            ],
          );
        });
      },
    );
  }
}

enum AnimationType {
  SEND,
  GENERIC,
  TRANSFER_SEARCHING_QR,
  TRANSFER_SEARCHING_MANUAL,
  TRANSFER_TRANSFERRING,
  MANTA
}

class AnimationLoadingOverlay extends ModalRoute<void> {
  AnimationType type;
  Function? onPoppedCallback;
  Color barrier;
  Color barrierStronger;

  AnimationLoadingOverlay(
    this.type,
    this.barrier,
    this.barrierStronger, {
    this.onPoppedCallback,
  });

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor {
    if (type == AnimationType.TRANSFER_TRANSFERRING ||
        type == AnimationType.TRANSFER_SEARCHING_QR ||
        type == AnimationType.TRANSFER_SEARCHING_MANUAL) {
      return barrierStronger;
    }
    return barrier;
  }

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => false;

  @override
  void didComplete(void result) {
    onPoppedCallback?.call();
    super.didComplete(result);
  }

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: _buildOverlayContent(context),
      ),
    );
  }

  Widget _getAnimation(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final theme = ref.watch(themeProvider);
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(theme.primary60),
      );
    });
  }

  Widget _buildOverlayContent(BuildContext context) {
    switch (type) {
      case AnimationType.TRANSFER_SEARCHING_QR:
        return Center(
          child: Container(
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.15,
            ),
            width: MediaQuery.of(context).size.width / 1.1,
            height: MediaQuery.of(context).size.width / 1.1,
            child: _getAnimation(context),
          ),
        );
      case AnimationType.TRANSFER_SEARCHING_MANUAL:
        return Center(
          child: Container(
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.15,
            ),
            width: MediaQuery.of(context).size.width / 1.1,
            height: MediaQuery.of(context).size.width / 1.1,
            child: _getAnimation(context),
          ),
        );
      case AnimationType.TRANSFER_TRANSFERRING:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: AlignmentDirectional(0, -0.5),
                width: MediaQuery.of(context).size.width / 1.4,
                height: MediaQuery.of(context).size.width / 1.4 / 2,
                child: _getAnimation(context),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 10,
                    top: 20,
                    bottom: MediaQuery.of(context).size.height * 0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Consumer(builder: (context, ref, _) {
                      final styles = ref.watch(stylesProvider);
                      return Text(
                        CaseChange.toUpperCase(
                          ref.watch(l10nProvider).transferLoading,
                          ref,
                        ),
                        style: styles.textStyleHeader2Colored,
                      );
                    }),
                    Container(
                      margin: EdgeInsets.only(bottom: 7),
                      width: 33.333,
                      height: 8.866,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      case AnimationType.MANTA:
        return Center(
          child: Container(
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.05),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: _getAnimation(context),
          ),
        );
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: type == AnimationType.SEND
              ? MainAxisAlignment.end
              : MainAxisAlignment.center,
          children: [
            Container(
              margin: type == AnimationType.SEND
                  ? EdgeInsets.only(bottom: 10, left: 90, right: 90)
                  : EdgeInsets.zero,
              //Widgth/Height ratio is needed because BoxFit is not working as expected
              width: type == AnimationType.SEND ? double.infinity : 100,
              height: type == AnimationType.SEND
                  ? MediaQuery.of(context).size.width
                  : 100,
              child: _getAnimation(context),
            ),
          ],
        );
    }
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}
