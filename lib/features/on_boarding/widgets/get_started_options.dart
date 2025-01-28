import 'package:dentalink/core/widgets/other_login_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedOptions extends StatelessWidget {
  const GetStartedOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const OtherLoginOptions(
          width: 172,
          height: 70,
          image: 'assets/images/google.png',
          title: 'Google',
        ), 
        SizedBox(width: 16.w,),
        const OtherLoginOptions(
          width: 172,
          height: 70,
          image: 'assets/images/facebook.png',
          title: 'Facebook',
        ),
      ],
    );
  }
}