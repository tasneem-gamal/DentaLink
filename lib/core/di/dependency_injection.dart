import 'package:dentalink/features/auth/forgot_password/data/apis/change_password_service/change_password_api_service.dart';
import 'package:dentalink/features/auth/forgot_password/data/apis/forgot_password_service/forgot_password_api_service.dart';
import 'package:dentalink/features/auth/forgot_password/data/apis/resend_otp_service/resend_otp_api_service.dart';
import 'package:dentalink/features/auth/forgot_password/data/apis/verify_otp/verify_otp_api_service.dart';
import 'package:dentalink/features/auth/forgot_password/data/repo/change_password/change_password_repo.dart';
import 'package:dentalink/features/auth/forgot_password/data/repo/forgot_password_repo/forgot_password_repo.dart';
import 'package:dentalink/features/auth/forgot_password/data/repo/resend_otp/resend_otp_repo.dart';
import 'package:dentalink/features/auth/forgot_password/data/repo/verify_otp/verify_otp_repo.dart';
import 'package:dentalink/features/auth/forgot_password/logic/change_password_cubit/change_password_cubit.dart';
import 'package:dentalink/features/auth/forgot_password/logic/forgot_password_cubit/fogot_password_cubit.dart';
import 'package:dentalink/features/auth/forgot_password/logic/resend_otp_cubit/resend_otp_cubit.dart';
import 'package:dentalink/features/auth/forgot_password/logic/verify_otp_cubit/verify_otp_cubit.dart';
import 'package:dentalink/features/auth/login/data/apis/login_api_service.dart';
import 'package:dentalink/features/auth/login/data/repo/login_repo.dart';
import 'package:dentalink/features/auth/login/logic/login_cubit/login_cubit.dart';
import 'package:dentalink/features/auth/sign_up/data/apis/sign_api_service.dart';
import 'package:dentalink/features/auth/sign_up/data/repo/sign_repo.dart';
import 'package:dentalink/features/auth/sign_up/logic/sign_cubit/sign_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpGetIt() {
  //sign
  getIt.registerSingleton<SignApiService>(SignApiService());
  getIt.registerSingleton<SignRepo>(SignRepo(getIt.get<SignApiService>()));
  getIt.registerFactory<SignCubit>(() => SignCubit(getIt()));

  //login
  getIt.registerSingleton<LoginApiService>(LoginApiService());
  getIt.registerSingleton<LoginRepo>(LoginRepo(getIt.get<LoginApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //forgot password
  getIt.registerSingleton<ForgotPasswordApiService>(ForgotPasswordApiService());
  getIt.registerSingleton<ForgotPasswordRepo>(ForgotPasswordRepo(getIt.get<ForgotPasswordApiService>()));
  getIt.registerLazySingleton<FogotPasswordCubit>(() => FogotPasswordCubit(getIt()));

  //verify-otp
  getIt.registerSingleton<VerifyOtpApiService>(VerifyOtpApiService());
  getIt.registerSingleton<VerifyOtpRepo>(VerifyOtpRepo(getIt.get<VerifyOtpApiService>()));
  getIt.registerLazySingleton<VerifyOtpCubit>(() => VerifyOtpCubit(
      getIt<VerifyOtpRepo>(), 
      getIt<FogotPasswordCubit>(),
));

  //change-password
  getIt.registerSingleton<ChangePasswordApiService>(ChangePasswordApiService());
  getIt.registerSingleton<ChangePasswordRepo>(ChangePasswordRepo(getIt.get<ChangePasswordApiService>()));
  getIt.registerLazySingleton<ChangePasswordCubit>(() => ChangePasswordCubit(
    getIt<ChangePasswordRepo>(), 
    getIt<FogotPasswordCubit>(), 
    getIt<VerifyOtpCubit>()
));

  //resend otp
  getIt.registerSingleton<ResendOtpApiService>(ResendOtpApiService());
  getIt.registerSingleton<ResendOtpRepo>(ResendOtpRepo(getIt.get<ResendOtpApiService>()));
  getIt.registerLazySingleton<ResendOtpCubit>(() => ResendOtpCubit(
    getIt<ResendOtpRepo>(), 
    getIt<FogotPasswordCubit>(),
  ));
}
