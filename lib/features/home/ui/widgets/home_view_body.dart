import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
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
          children: [
            const HomeViewAppBar(),
            verticalSpace(30),
            CustomTextFormField(
              validator: (validator){}, 
              hintText: 'What are you looking for?',
              prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
            ),
            verticalSpace(24),
            const AppCategories()
          ],
        ),
      ),
    );
  }
}


