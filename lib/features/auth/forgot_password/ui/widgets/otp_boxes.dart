import 'package:dentalink/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpBoxes extends StatefulWidget {
  const OtpBoxes({
    super.key,
  });

  @override
  State<OtpBoxes> createState() => _OtpBoxesState();
}

class _OtpBoxesState extends State<OtpBoxes> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      controller: otpController,
      pinAnimationType: PinAnimationType.fade,
      onCompleted: (value){},
      defaultPinTheme: PinTheme(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: ColorsManager.moreLightGray)
        )
      ),
    );
  }
}