import 'package:dentalink/features/auth/forgot_password/data/apis/forgot_password_service/forgot_password_api_service.dart';
import 'package:dentalink/features/auth/forgot_password/data/repo/forgot_password_repo/forgot_password_repo.dart';
import 'package:dentalink/features/auth/forgot_password/logic/forgot_password_cubit/fogot_password_cubit.dart';
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
  getIt.registerFactory<FogotPasswordCubit>(() => FogotPasswordCubit(getIt()));
}
