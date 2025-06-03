import 'package:bloc/bloc.dart';
import 'package:dentalink/features/home/data/models/remove_from_cart/remove_from_cart_request.dart';
import 'package:dentalink/features/home/data/repo/remove_from_cart/remove_from_cart_repo.dart';

part 'remove_from_cart_state.dart';

class RemoveFromCartCubit extends Cubit<RemoveFromCartState> {
  final RemoveFromCartRepo removeFromCartRepo;

  RemoveFromCartCubit(this.removeFromCartRepo) : super(RemoveFromCartInitial());

  Future<void> removeFromCart(
      RemoveFromCartRequest removeFromCartRequest) async {
    emit(RemoveFromCartLoading());
    try {
      final response =
          await removeFromCartRepo.removeFromCart(removeFromCartRequest);
      response.fold(
        (failure) =>
            emit(RemoveFromCartFailure(errMessage: failure.errMessage)),
        (success) => emit(RemoveFromCartSuccess(
            message: success.message ?? 'Item removed successfully')),
      );
    } catch (e) {
      emit(RemoveFromCartFailure(errMessage: e.toString()));
    }
  }
}
