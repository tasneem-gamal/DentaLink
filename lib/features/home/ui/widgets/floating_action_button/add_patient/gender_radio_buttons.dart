import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/features/home/logic/add_patient_cubit/add_patient_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderRadioButtons extends StatelessWidget {
  const GenderRadioButtons({
    super.key,
  });

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
              groupValue: context.read<AddPatientCubit>().selectedGender, 
              fillColor:  fillColor(),
              onChanged: (value){
                context.read<AddPatientCubit>().updateGender(value!);
              }
            ),
            const Text('Male')
          ],
        ),
        Row(
          children: [
            Radio<String>(
              value: 'Female', 
              groupValue: context.read<AddPatientCubit>().selectedGender, 
              fillColor: fillColor(),
              onChanged: (value){
                context.read<AddPatientCubit>().updateGender(value!);
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
