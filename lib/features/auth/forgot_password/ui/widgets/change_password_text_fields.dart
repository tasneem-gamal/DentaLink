import 'package:dentalink/core/helpers/app_regex.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/features/auth/forgot_password/logic/change_password_cubit/change_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          controller: context.read<ChangePasswordCubit>().passwordController,
          validator: passwordValidate, 
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
    if (value != context.read<ChangePasswordCubit>().passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

    passwordValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (!AppRegex.hasLowerCase(value) &&
        !AppRegex.hasMinLength(value) &&
        !AppRegex.isPasswordValid(value) &&
        !AppRegex.hasSpecialCharacter(value)) {
      return "Enter a valid password: at least 8 characters,\nincluding one lowercase letter and one special char.";
    }
  }
}