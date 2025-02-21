import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/label_text_app.dart';
import 'package:flutter/material.dart';

class NewInToolsItem extends StatelessWidget {
  const NewInToolsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorsManager.moreLightGray)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/tools.png'),
            verticalSpace(12),
            Text(
              'Curette',
              style: CustomTextStyles.font12BlackMedium(context)
            ),
            LabelTextApp(
              label: 'Price: ',
              text: '200 ',
              textStyleLable: CustomTextStyles.font12LightGrayRegular(context),
              textStyleText: CustomTextStyles.font12BlackRegular(context),
            ),
            LabelTextApp(
              label: 'Description:', 
              text: ' for deep cleaning ', 
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
