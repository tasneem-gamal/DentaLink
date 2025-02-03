import 'package:dentalink/core/theming/font_weight_helper.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class IfImageUploaded extends StatelessWidget {
  const IfImageUploaded({
    super.key,
    required this.selectedFileName,
    required this.isFileUploaded,
  });

  final String? selectedFileName;
  final bool isFileUploaded;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          selectedFileName!,
          style: CustomTextStyles.font14BlackRegular.copyWith(
            fontWeight: FontWeightHelper.bold
          ),
        ),
        if(selectedFileName != null && isFileUploaded)
        Row(
          children: [
            const Icon(Icons.done, color: Colors.green,),
            Text(
              'success',
              style: CustomTextStyles.font14BlackRegular.copyWith(
                fontWeight: FontWeightHelper.bold,
                color: Colors.green
              ),
            )
          ],
        )
      ],
    );
  }
}