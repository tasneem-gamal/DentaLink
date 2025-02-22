import 'package:dentalink/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.w,
      height: 70.h,
      child: FloatingActionButton(
        onPressed: (){},
        shape: const CircleBorder(),
        backgroundColor: ColorsManager.mainBlue,
        child: const Icon(Icons.add, size: 36, color: Colors.white,),
      ),
    );
  }
}