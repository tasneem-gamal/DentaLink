import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
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
              )
            ],
          ),
        )
      ),
    );
  }
}

