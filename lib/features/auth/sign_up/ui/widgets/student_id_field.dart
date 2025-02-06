import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';

class StudentIdField extends StatelessWidget {
  const StudentIdField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const TitleOfTextField(title: 'Student Id'),
          verticalSpace(14),
          CustomTextFormField(
            validator: studentIdValidate, 
            hintText: 'Your student id',
            keyboardType: TextInputType.number,
          )
        ],
      )
    );
  }

  studentIdValidate(value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your student ID';
            } else if (value.length < 10) {
              return 'Student ID must be at least 10 digits';
            }
            return null;
          }
}