import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/label_text_app.dart';
import 'package:dentalink/features/profile/ui/widgets/my_posts/change_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientPostItem extends StatelessWidget {
  const PatientPostItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorsManager.moreLightGray)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                ChangeImage(
                  image: 'assets/images/doctor_icon.png',
                  width: 80.w,
                  height: 180.h,
                ),
                horizontalSpace(20),
                Expanded(
                  child: Column(
                    children: [
                      const LabelTextApp(label: 'Patient name: ', text: 'Malek'),
                      verticalSpace(8),
                      const LabelTextApp(label: 'Age: ', text: '40'),
                      verticalSpace(8),
                      const LabelTextApp(label: 'Title: ', text: 'Cavity'),
                      verticalSpace(8),
                      const LabelTextApp(label: 'Location: ', text: 'Mansoura'),
                      verticalSpace(8),
                      const LabelTextApp(label: 'Gender: ', text: 'Male'),
                      verticalSpace(8),
                      const LabelTextApp(label: 'Phone number: ', text: '3456205'),
                      verticalSpace(8),
                      const LabelTextApp(label: 'Category: ', text: 'Endodontics'),
                    ],
                  ),
                ),
                const Icon(
                Icons.edit_square, 
                color: ColorsManager.mainBlue,
                )
              ],
            ),
            verticalSpace(12),
            Column(
              children: [
                const LabelTextApp(label: 'Description: ', text: 'Used to adjust braces, wires, and other orthodontic appliances.'),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Attachments',
                      style: CustomTextStyles.font14BlackRegular(context),
                    ),
                    Container(
                      width: 134,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorsManager.moreLightGray),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.image_outlined),
                          Text('data.png'),
                          Icon(Icons.close)
                        ],
                      ),
                    ),
                    const Icon(Icons.delete, color: Colors.red,)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}