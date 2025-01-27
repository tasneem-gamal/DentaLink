import 'package:dentalink/core/routing/app_router.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dentalink extends StatelessWidget {
  const Dentalink({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'DentaLink',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingView,
        onGenerateRoute: appRouter.generateRoutes,
      )
    );
  }
}