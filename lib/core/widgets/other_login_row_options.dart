import 'package:dentalink/core/widgets/other_login_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherLoginRowOptions extends StatelessWidget {
  const OtherLoginRowOptions({
    super.key, this.width, this.height,
  });
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OtherLoginOption(
          width: width ?? 172,
          height: height ?? 70,
          image: 'assets/images/google.png',
          title: 'Google',
        ), 
        SizedBox(width: 16.w,),
        OtherLoginOption(
          width: width ?? 172,
          height: height ?? 70,
          image: 'assets/images/facebook.png',
          title: 'Facebook',
        ),
      ],
    );
  }
}