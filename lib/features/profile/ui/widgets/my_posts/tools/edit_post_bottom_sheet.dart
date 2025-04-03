import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditPostBottomSheet extends StatelessWidget {
  const EditPostBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 24,
            right: 24,
            top: 24
          ),
          child: Form(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Edit Post',
                      style: CustomTextStyles.font16BlackMedium(context),
                    ),
                    const Icon(Icons.cancel, color: ColorsManager.lightGray,)
                  ],
                ),
                verticalSpace(16),
                CustomTextFormField(
                  validator: (value){}, 
                  hintText: 'Mirror'
                ),
                verticalSpace(12),
                CustomTextFormField(
                  validator: (value){}, 
                  hintText: '300LE'
                ),
                verticalSpace(12),
                CustomTextFormField(
                  validator: (value){}, 
                  hintText: 'Endodontics'
                ),
                verticalSpace(12),
                CustomTextFormField(
                  validator: (value){}, 
                  hintText: 'Used to ...'
                ),
                verticalSpace(16),
                CustomAppButton(
                  onPressed: (){},
                  btnText: 'Edit'
                )
              ],
            )
          ),
        ),
      )
    );
  }
}