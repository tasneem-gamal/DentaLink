import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/label_text_app.dart';
import 'package:dentalink/features/home/ui/widgets/app_categories.dart';
import 'package:dentalink/features/home/ui/widgets/home_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeViewAppBar(),
            verticalSpace(30),
            CustomTextFormField(
              validator: (validator){}, 
              hintText: 'What are you looking for?',
              prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
            ),
            verticalSpace(24),
            const AppCategories(),
            verticalSpace(30),
            Text(
              'New In Tools',
              style: CustomTextStyles.font16BlackMedium,
            ),
            verticalSpace(10),
            Container(
              width: 154,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorsManager.moreLightGray)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/tools.png'),
                  verticalSpace(12),
                  Text(
                    'Curette',
                    style: CustomTextStyles.font12BlackMedium
                  ),
                  LabelTextApp(
                    label: 'Price: ',
                    text: '200 ',
                    textStyleLable: CustomTextStyles.font12LightGrayRegular,
                    textStyleText: CustomTextStyles.font12MainBlueRegular,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




