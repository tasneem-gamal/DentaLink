import 'package:dentalink/core/di/dependency_injection.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/features/auth/forgot_password/logic/change_password_cubit/change_password_cubit.dart';
import 'package:dentalink/features/auth/forgot_password/logic/forgot_password_cubit/fogot_password_cubit.dart';
import 'package:dentalink/features/auth/forgot_password/logic/resend_otp_cubit/resend_otp_cubit.dart';
import 'package:dentalink/features/auth/forgot_password/logic/verify_otp_cubit/verify_otp_cubit.dart';
import 'package:dentalink/features/auth/forgot_password/ui/change_password_view.dart';
import 'package:dentalink/features/auth/forgot_password/ui/forgot_password_otp_view.dart';
import 'package:dentalink/features/auth/forgot_password/ui/forgot_password_view.dart';
import 'package:dentalink/features/auth/login/logic/login_cubit/login_cubit.dart';
import 'package:dentalink/features/auth/login/ui/login_view.dart';
import 'package:dentalink/features/auth/sign_up/logic/sign_cubit/sign_cubit.dart';
import 'package:dentalink/features/auth/sign_up/ui/sign_up_view.dart';
import 'package:dentalink/features/home/ui/home_view.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_patient/add_patient_view.dart';
import 'package:dentalink/features/on_boarding/on_boarding_view.dart';
import 'package:dentalink/features/on_boarding/widgets/on_boarding_get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      // on boarding view
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());

      case Routes.onBoardingGetStartedView:
        return MaterialPageRoute(builder: (_) => const OnBoardingGetStarted());

      //login
      case Routes.loginView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginView(),
                ));

      case Routes.forgotPasswordView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<FogotPasswordCubit>(),
                  child: const ForgotPasswordView(),
                ));

      case Routes.forgotPasswordOtpView:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<FogotPasswordCubit>()),
              BlocProvider(create: (context) => getIt<VerifyOtpCubit>()),
              BlocProvider(create: (context) => getIt<ResendOtpCubit>()),
            ],
            child: const ForgotPasswordOtpView(),
          ),
        );

      case Routes.changePasswordView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ChangePasswordCubit>(),
                  child: const ChangePasswordView(),
                ));
      //sign
      case Routes.signUpView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignCubit>(),
                  child: const SignUpView(),
                ));

      // home and related
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case Routes.addPatient:
        return MaterialPageRoute(builder: (_) => const AddPatientView());



      default:
        return null;
    }
  }
}
