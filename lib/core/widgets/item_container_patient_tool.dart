import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/label_text_app.dart';
import 'package:flutter/material.dart';

class ItemContainerPatientTool extends StatelessWidget {
  const ItemContainerPatientTool({
    super.key, 
    this.width, 
    this.height, 
    required this.image, 
    required this.itemTitle, 
    required this.firstLabel, 
    required this.firstLabelText, 
    required this.secondLabel, 
    required this.secondLabelText,
  });

  final double? width;
  final double? height;
  final String image;
  final String itemTitle;
  final String firstLabel;
  final String firstLabelText;
  final String secondLabel;
  final String secondLabelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 154,
      height: height ?? 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorsManager.moreLightGray)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            verticalSpace(12),
            Text(
              itemTitle,
              style: CustomTextStyles.font12BlackMedium(context)
            ),
            LabelTextApp(
              label: firstLabel,
              text: firstLabelText,
              textStyleLable: CustomTextStyles.font12LightGrayRegular(context),
              textStyleText: CustomTextStyles.font12BlackRegular(context),
            ),
            LabelTextApp(
              label: secondLabel, 
              text: secondLabelText, 
              textStyleLable: CustomTextStyles.font12LightGrayRegular(context),
              textStyleText: CustomTextStyles.font12BlackRegular(context),
            ),
            verticalSpace(8),
            const Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: ColorsManager.mainBlue,
                child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
