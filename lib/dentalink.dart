import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dentalink extends StatelessWidget {
  const Dentalink({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      child: MaterialApp(
        title: 'DentaLink',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
      )
    );
  }
}