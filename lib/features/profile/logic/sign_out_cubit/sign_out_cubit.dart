import 'package:bloc/bloc.dart';
import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/features/profile/data/sign_out/models/sign_out_request_body.dart';
import 'package:dentalink/features/profile/data/sign_out/models/sign_out_response_body.dart';
import 'package:dentalink/features/profile/data/sign_out/repo/sign_out_repo.dart';

part 'sign_out_state.dart';

class SignOutCubit extends Cubit<SignOutState> {
  SignOutCubit(this.signOutRepo) : super(SignOutInitial());

  final SignOutRepo signOutRepo;

  void emitSignOutStates() async {
    emit(SignOutLoading());
    final respose = await signOutRepo.signOut(
      SignOutRequestBody(
        token: SharedPreferencesKeys.userToken
      )
    );
    respose.fold((failure) {
      emit(SignOutFailure(failure.errMessage));
    }, (signOutSuccess) {
      emit(SignOutSuccess(signOutSuccess));
    });
  }

}
