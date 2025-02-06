import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/features/auth/forgot_password/ui/forgot_password_view.dart';
import 'package:dentalink/features/auth/login/ui/login_view.dart';
import 'package:dentalink/features/auth/sign_up/ui/sign_up_view.dart';
import 'package:dentalink/features/on_boarding/on_boarding_view.dart';
import 'package:dentalink/features/on_boarding/widgets/on_boarding_get_started.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings){
    switch (settings.name){
      // on boarding view
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
        
      case Routes.onBoardingGetStartedView:
        return MaterialPageRoute(builder: (_) => const OnBoardingGetStarted());

      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      
      case Routes.forgotPasswordView:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());

      case Routes.signUpView:
        return MaterialPageRoute(builder: (_) => const SignUpView());
    default:
        return null;
    }
  }
}