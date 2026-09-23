import 'package:flutter/material.dart';

/// Marks a name the wallet's node proved
const kDotkProvenIcon = Icons.verified_user;

class DotkProvenName extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign textAlign;

  const DotkProvenName(
    this.text, {
    super.key,
    this.style,
    this.textAlign = .center,
  });

  @override
  Widget build(BuildContext context) {
    final style = DefaultTextStyle.of(context).style.merge(this.style);

    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            alignment: .middle,
            child: Icon(
              kDotkProvenIcon,
              size: style.fontSize,
              color: style.color,
            ),
          ),
          TextSpan(text: ' $text'),
        ],
      ),
      style: style,
      textAlign: textAlign,
    );
  }
}
