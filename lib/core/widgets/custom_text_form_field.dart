import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, 
    this.suffixIcon, 
    this.prefixIcon, 
    this.isObsecureText, 
    this.controller, 
    required this.validator, 
    this.onChanged, 
    required this.hintText,
    this.keyboardType,
    this.maxLines
  });
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isObsecureText;
  final String hintText;
  final TextEditingController? controller;
  final Function(String?)? validator;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    final int effectiveMaxLines = (isObsecureText == true) ? 1 : (maxLines ?? 1);
    return TextFormField(
      keyboardType: keyboardType,
      maxLines: effectiveMaxLines,
      controller: controller,
      validator: validator != null ? (value) => validator!(value) : null,
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
            borderSide: const BorderSide(color: ColorsManager.moreLightGray)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red)),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: CustomTextStyles.font12LightGrayRegular(context),
        prefixIcon: prefixIcon,
        prefixIconColor: ColorsManager.lightGray,
        suffixIcon: suffixIcon,
        suffixIconColor: ColorsManager.moreLightGray,
      ),
    );
  }
}