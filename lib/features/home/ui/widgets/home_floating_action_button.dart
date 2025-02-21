import 'package:dentalink/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFloatingActionButton extends StatefulWidget {
  const HomeFloatingActionButton({
    super.key,
  });

  @override
  State<HomeFloatingActionButton> createState() => _HomeFloatingActionButtonState();
}

class _HomeFloatingActionButtonState extends State<HomeFloatingActionButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.w,
      height: 70.h,
      child: FloatingActionButton(
        onPressed: (){
          setState(() {
            isPressed = !isPressed;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: ColorsManager.mainBlue,
        child: Icon(
          isPressed ? Icons.close : Icons.add, 
          size: 36, 
          color: Colors.white,
        ),
      ),
    );
  }
}