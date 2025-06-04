import 'package:bloc/bloc.dart';
import 'package:dentalink/features/home/data/models/add_to_cart/add_to_cart_request.dart';
import 'package:dentalink/features/home/data/repo/add_to_cart/add_to_cart_repo.dart';

part 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  final AddToCartRepo addToCartRepo;

  AddToCartCubit(this.addToCartRepo) : super(AddToCartInitial());

  Future<void> addToCart(AddToCartRequest addToCartRequest) async {
    emit(AddToCartLoading());
    try {
      final response = await addToCartRepo.addToCart(addToCartRequest);
      response.fold(
        (failure) => emit(AddToCartFailure(errMessage: failure.errMessage)),
        (success) =>
            emit(AddToCartSuccess(message: success.message ?? 'Success')),
      );
    } catch (e) {
      emit(AddToCartFailure(errMessage: e.toString()));
    }
  }
}
