import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class LabelTextApp extends StatelessWidget {
  const LabelTextApp({
    super.key, required this.label, required this.text, this.textStyleLable, this.textStyleText,
  });
  final String label;
  final String text;
  final TextStyle? textStyleLable;
  final TextStyle? textStyleText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: textStyleLable ?? CustomTextStyles.font12LightGrayRegular(context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
        Flexible(
          child: Text(
            text,
            style: textStyleText ??  CustomTextStyles.font12BlackRegular(context),
            maxLines: 1,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
