import 'package:dentalink/core/di/dependency_injection.dart';
import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/shared_preference.dart';
import 'package:dentalink/core/routing/app_router.dart';
import 'package:dentalink/dentalink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  setUpGetIt();
  runApp(Dentalink(appRouter: AppRouter(),));
}

checkIfLoggedInUser() async{
  String? userToken = await SharedPreferenceHelper.getSecuredString(SharedPreferencesKeys.userToken);
  if(userToken != null && userToken.isNotEmpty){
    Constants.isLoggedIn = true;
  } else {
    Constants.isLoggedIn = false;
  }
}