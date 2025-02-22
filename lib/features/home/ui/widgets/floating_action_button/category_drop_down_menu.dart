import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CategoryDropDownMenu extends StatefulWidget {
  const CategoryDropDownMenu({
    super.key,
  });

  @override
  State<CategoryDropDownMenu> createState() => _CategoryDropDownMenuState();
}

class _CategoryDropDownMenuState extends State<CategoryDropDownMenu> {
  String? selectedValue;
  final List<String> items = [
    'General Dentistry',
    'Pediatric Dentistry',
    'Oral and Maxillofacial Surgery ',
    'Orthodontics', 
    'Endodontics', 
    'Prosthodontics', 
    'Oral Pathology',
    'Periodontics',
    'Oral Medicine',
    'Cosmetic Dentistry'
  ];


  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        hint: Text(
          'Endodontics',
          style: CustomTextStyles.font12LightGrayRegular(context),
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorsManager.moreLightGray)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorsManager.moreLightGray)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorsManager.moreLightGray)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red)),
        ),
        items: items.map((item){
          return DropdownMenuItem(
            value: item,
            child: Text(
              item,
              style: CustomTextStyles.font12BlackMedium(context),
            )
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        });
  }
}
