import 'package:dentalink/features/sign_up/ui/widgets/academic_year_drop_down_menu.dart';
import 'package:flutter/material.dart';

class AcademicAndStudentIdSign extends StatelessWidget {
  const AcademicAndStudentIdSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AcademicYearDropDownMenu(),
      ],
    );
  }
}