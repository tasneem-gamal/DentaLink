import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GenderRadioButtons extends StatefulWidget {
  const GenderRadioButtons({
    super.key,
  });

  @override
  State<GenderRadioButtons> createState() => _GenderRadioButtonsState();
}

class _GenderRadioButtonsState extends State<GenderRadioButtons> {
  String? selectedGender;
  
  @override
  void initState() {
    super.initState();
    selectedGender = 'Male';
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Gender: ',
          style: CustomTextStyles.font14BlackRegular(context),
        ),
        Row(
          children: [
            Radio<String>(
              value: 'Male', 
              groupValue: selectedGender, 
              fillColor:  fillColor(),
              onChanged: (value){
                setState(() {
                  selectedGender = value;
                });
              }
            ),
            const Text('Male')
          ],
        ),
        Row(
          children: [
            Radio<String>(
              value: 'Female', 
              groupValue: selectedGender, 
              fillColor: fillColor(),
              onChanged: (value){
                setState(() {
                  selectedGender = value;
                });
              }
            ),
            const Text('Female')
          ],
        )
      ],
    );
  }

  WidgetStateProperty<Color> fillColor() {
    return WidgetStateProperty.resolveWith<Color>((states){
              if(states.contains(WidgetState.selected)){
                return ColorsManager.mainBlue;
              }
              return ColorsManager.moreLightGray;
            });
  }
}
