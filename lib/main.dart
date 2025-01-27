import 'package:dentalink/core/routing/app_router.dart';
import 'package:dentalink/dentalink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(Dentalink(appRouter: AppRouter(),));
}
