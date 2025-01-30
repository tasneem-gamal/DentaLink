import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, this.suffixIcon, this.isObsecureText, this.controller, required this.validator, this.onChanged, required this.hintText,
  });
  final Widget? suffixIcon;
  final bool? isObsecureText;
  final String hintText;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value){
        return validator(value);
      },
      onChanged: onChanged,
      obscureText: isObsecureText ?? false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                const BorderSide(color: ColorsManager.moreLightGray)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                const BorderSide(color:ColorsManager.moreLightGray)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.white)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red)),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: CustomTextStyles.font12LightGrayRegular,
        suffixIcon: suffixIcon,
        suffixIconColor: ColorsManager.moreLightGray,
      ),
    );
  }
}