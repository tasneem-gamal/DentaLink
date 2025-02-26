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
  final ValueNotifier<String?> selectedValue =
      ValueNotifier<String?>('Endodontics');

  final List<String> items = [
    'General Dentistry',
    'Pediatric Dentistry',
    'Oral and Maxillofacial Surgery',
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
    return ValueListenableBuilder<String?>(
      valueListenable: selectedValue,
      builder: (context, value, child) {
        return DropdownButtonFormField<String>(
          validator: categoryValidate,
          value: value,
          decoration: categoryDecoration(),
          items: items.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(
                item,
                style: CustomTextStyles.font12BlackMedium(context),
              ),
            );
          }).toList(),
          onChanged: (newValue) {
            selectedValue.value = newValue;
          },
        );
      },
    );
  }

  InputDecoration categoryDecoration() {
    return InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: ColorsManager.moreLightGray)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: ColorsManager.moreLightGray)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: ColorsManager.moreLightGray)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red)),
        );
  }

  String? categoryValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Category cannot be empty';
    }
    return null;
  }
}
