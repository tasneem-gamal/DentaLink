import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GeneralCustomAppBar extends StatelessWidget {
  const GeneralCustomAppBar({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (){
            context.pop();
          }, 
          icon: const Icon(
            Icons.arrow_back_ios
          )
        ),
        Text(
          title,
          style: CustomTextStyles.font16BlackMedium(context),
        ),
        Image.asset('assets/images/tooth_icon.png')
      ],
    );
  }
}