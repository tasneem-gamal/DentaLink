import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class UploadPatientImages extends StatelessWidget {
  const UploadPatientImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(Icons.upload_file_outlined),
            Text(
              'Upload Images',
              style: CustomTextStyles.font14BlackRegular(context),
            )
          ],
        ),
        verticalSpace(12),
        Container(
          width: double.infinity,
          height: 115,
          decoration: BoxDecoration(
            color: ColorsManager.lightGreen,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: ColorsManager.lightGray, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Column(
              children: [
                Image.asset('assets/images/upload_icon.png'),
                Text(
                  'Only .jpg and .png files',
                  style: CustomTextStyles.font12LightGrayRegular(context),
                ),
                ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff34FF9D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    )
                  ),
                  child: Text(
                    'Choose File',
                    style: CustomTextStyles.font12BlackRegular(context),
                  )
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}