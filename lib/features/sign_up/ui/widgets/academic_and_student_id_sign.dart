import 'package:dentalink/features/sign_up/ui/widgets/academic_year_drop_down_menu.dart';
import 'package:dentalink/features/sign_up/ui/widgets/student_id_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcademicAndStudentIdSign extends StatelessWidget {
  const AcademicAndStudentIdSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AcademicYearDropDownMenu(),
        SizedBox(width: 12.w,),
        const StudentIdField()
      ],
    );
  }
}

