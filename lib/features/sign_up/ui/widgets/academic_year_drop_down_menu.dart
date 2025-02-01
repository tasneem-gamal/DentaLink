import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcademicYearDropDownMenu extends StatefulWidget {
  const AcademicYearDropDownMenu({super.key});

  @override
  State<AcademicYearDropDownMenu> createState() => _AcademicYearDropDownMenuState();
}

class _AcademicYearDropDownMenuState extends State<AcademicYearDropDownMenu> {
  List<String> years = ['level four', 'final level'];
  String? selectedYear ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleOfTextField(title: 'Academic year'),
              SizedBox(height: 14.h,),
              SizedBox(
                height: 52,
                width: 155,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Select level',
                    hintStyle: const TextStyle(color: ColorsManager.moreLightGray), 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: ColorsManager.moreLightGray)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: ColorsManager.moreLightGray)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: ColorsManager.moreLightGray)
                    ),
                  ),
                  value: selectedYear,
                  items: years.map((year){
                    return DropdownMenuItem(
                      value: year,
                      child: Text(year),
                      );
                  }).toList(), 
                  onChanged: (newValue){
                    setState(() {
                      selectedYear = newValue;
                    });
                  }
                ),
              )
            ],
          ),
        );
  }
}