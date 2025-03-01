import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_patient/description_form_field.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_tool/category_drop_down_menu_add_tool.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_tool/upload_tool_images.dart';
import 'package:flutter/material.dart';

class AddToolViewBody extends StatefulWidget {
  const AddToolViewBody({super.key});

  @override
  State<AddToolViewBody> createState() => _AddToolViewBodyState();
}

class _AddToolViewBodyState extends State<AddToolViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isFileUploaded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              verticalSpace(20),
              const TitleOfTextField(title: 'Tool Name'),
              verticalSpace(12),
              CustomTextFormField(
                validator: (validator){}, 
                hintText: 'ex. Mouth Mirror'
              ),
              verticalSpace(16),
              const TitleOfTextField(title: 'Price'),
              verticalSpace(12),
              CustomTextFormField(
                validator: (validator){}, 
                hintText: 'ex. 200LE'
              ),
              verticalSpace(16),
              const TitleOfTextField(title: 'Category'),
              verticalSpace(12),
              const CategoryDropDownMenuAddTool(),
              verticalSpace(16),
              const DescriptionFormField(
                hintText: 'ex. Reflects light for better visibility during procedures.'
              ),
              verticalSpace(16),
              UploadToolImages(
                onFileUploaded: setFileUploaded,
                onFileSelected: (files){},
              )
            ],
          )
        )
      ),
    );
  }

      void setFileUploaded(bool value) {
    setState(() {
      isFileUploaded = value;
    });
  }

}