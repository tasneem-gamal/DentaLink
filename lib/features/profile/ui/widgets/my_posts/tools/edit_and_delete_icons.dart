import 'package:dentalink/core/theming/colors.dart';
import 'package:flutter/material.dart';

class EditAndDeleteIcons extends StatelessWidget {
  const EditAndDeleteIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.edit_square, color: ColorsManager.mainBlue,),
        Icon(Icons.delete, color: Colors.red,),
      ],
    );
  }
}
