import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class LatestCaseItem extends StatelessWidget {
  const LatestCaseItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorsManager.moreLightGray)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: ColorsManager.mainBlue,
                  child: Image.asset('assets/images/doctor_icon.png'),
                ),
                horizontalSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dr. Mahmoud',
                      style: CustomTextStyles.font12BlackMedium,
                    ),
                    Text(
                      'Location: Mansoura',
                      style: CustomTextStyles.font12LightGrayRegular,
                    ),
                    Row(
                      children: [
                        Text(
                          'Title:',
                          style: CustomTextStyles.font12LightGrayRegular,
                        ),
                        Text(
                          ' Cavities',
                          style: CustomTextStyles.font12MainBlueRegular,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.arrow_forward_ios)
            )
          ],
        ),
      ),
    );
  }
}
