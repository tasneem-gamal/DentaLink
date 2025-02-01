import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          SizedBox(height: 14.h,),
          CustomTextFormField(
            validator: (value){}, 
            hintText: 'Your student id',
            keyboardType: TextInputType.number,
          )
        ],
      )
    );
  }
}