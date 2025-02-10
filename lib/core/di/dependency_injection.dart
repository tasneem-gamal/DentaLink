import 'package:dentalink/features/auth/sign_up/data/apis/sign_api_service.dart';
import 'package:dentalink/features/auth/sign_up/data/repo/sign_repo.dart';
import 'package:dentalink/features/auth/sign_up/logic/sign_cubit/sign_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpGetIt(){
    getIt.registerSingleton<SignApiService>(SignApiService(Dio()));
    getIt.registerSingleton<SignRepo>(SignRepo(getIt.get<SignApiService>()));
    getIt.registerFactory<SignCubit>(() => SignCubit(getIt()));
}