import 'package:flutter/material.dart';

class LabelTextApp extends StatelessWidget {
  const LabelTextApp({
    super.key, required this.label, required this.text, required this.textStyleLable, required this.textStyleText,
  });
  final String label;
  final String text;
  final TextStyle textStyleLable;
  final TextStyle textStyleText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: textStyleLable,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
        Expanded(
          child: Text(
            text,
            style: textStyleText,
            maxLines: 1,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
