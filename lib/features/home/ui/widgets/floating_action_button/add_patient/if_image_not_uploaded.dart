import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class IfImageNotUploaded extends StatelessWidget {
  const IfImageNotUploaded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/upload_icon.png'),
        Text(
          'Only .jpg and .png files',
          style: CustomTextStyles.font12LightGrayRegular(context),
        ),
      ],
    );
  }
}