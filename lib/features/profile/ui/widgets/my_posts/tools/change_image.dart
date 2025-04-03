import 'package:dentalink/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeImage extends StatelessWidget {
  const ChangeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150.h,
          width: 90.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: ColorsManager.moreLightGray)
          ),
          child: Image.asset('assets/images/item.png'),
        ),
        const Positioned(
          bottom: -10,
          right: -10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: ColorsManager.mainBlue,
            child: Icon(Icons.add_a_photo, color: Colors.white,),
          ),
        )
      ],
    );
  }
}