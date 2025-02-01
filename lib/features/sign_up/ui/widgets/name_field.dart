import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameField extends StatefulWidget {
  const NameField({super.key});

  @override
  State<NameField> createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleOfTextField(
          title: 'Name',
        ),
        SizedBox(
          height: 14.h,
        ),
        CustomTextFormField(
            keyboardType: TextInputType.name,
            controller: nameController,
            validator: nameValidate,
            hintText: 'Salem'),
      ],
    );
  }

  nameValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Name cannot be empty';
    }
  }
}
