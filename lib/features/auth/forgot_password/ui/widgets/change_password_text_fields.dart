import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChangePasswordTextFields extends StatefulWidget {
  const ChangePasswordTextFields({
    super.key,
  });

  @override
  State<ChangePasswordTextFields> createState() => _ChangePasswordTextFieldsState();
}

class _ChangePasswordTextFieldsState extends State<ChangePasswordTextFields> {
  final TextEditingController passwordConfirmController = TextEditingController();

  @override
  void dispose() {
    passwordConfirmController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(8),
        Text(
          'New Password',
          style: CustomTextStyles.font14BlackRegular,
        ),
        verticalSpace(8),
        CustomTextFormField(
          validator: (validator){}, 
          hintText: '*****************'
        ),
        verticalSpace(12),
        Text(
          'Confirm New Password',
          style: CustomTextStyles.font14BlackRegular,
        ),
        verticalSpace(8),
        CustomTextFormField(
          controller: passwordConfirmController,
          validator: confirmPasswordValidate, 
          hintText: '*****************'
        ),
      ],
    );
  }

    confirmPasswordValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    // if (value != context.read<SignCubit>().passwordController.text) {
    //   return 'Passwords do not match';
    // }
    return null;
  }
}