import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/features/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings){
    switch (settings.name){
      // on boarding view
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
        
    default:
        return null;
    }
  }
}