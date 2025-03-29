import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:dentalink/features/profile/ui/widgets/doctor_avatar.dart';
import 'package:dentalink/features/profile/ui/widgets/edit_profile/row_fields.dart';
import 'package:flutter/material.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              verticalSpace(20),
              const DoctorAvatar(),
              verticalSpace(20),
              const RowFields(
                title1: 'Name',
                hintText1: 'Mahmoud',
                title2: 'Email',
                hintText2: 'test@gmail.com',
              ),
              verticalSpace(18),
              const RowFields(
                title1: 'Academic year',
                hintText1: 'Last year',
                title2: 'Phone',
                hintText2: '0102556882',
              ),
              verticalSpace(18),
              const TitleOfTextField(title: 'Password'),
              verticalSpace(6),
              CustomTextFormField(validator: (validator){}, hintText: '********')
            ],
          ),
        )
      ),
    );
  }
}

