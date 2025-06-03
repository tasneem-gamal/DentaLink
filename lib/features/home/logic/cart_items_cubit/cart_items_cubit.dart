import 'package:bloc/bloc.dart';
import 'package:dentalink/features/home/data/models/cart_item_model.dart';
import 'package:dentalink/features/home/data/repo/cart_items/cart_items_repo.dart';

part 'cart_items_state.dart';

class CartItemsCubit extends Cubit<CartItemsState> {
  CartItemsRepo cartItemsRepo;
  CartItemsCubit(this.cartItemsRepo) : super(CartItemsInitial());
  List<CartItemModel>? cartItemsList = [];

  void getCartItems() async {
    emit(CartItemsLoading());
    final response = await cartItemsRepo.getCartItems();
    response.fold((failure) {
      emit(CartItemsFailure(errMessage: failure.errMessage));
    }, (cartItemsResponse) {
      cartItemsList = cartItemsResponse.items;
      if (cartItemsList != null) {
        if (cartItemsList!.isEmpty) {
          emit(CartItemsEmpty(message: 'Cart is empty'));
        } else {
          emit(CartItemsSuccess(cartItemsList: cartItemsList!));
        }
      } else {
        emit(CartItemsFailure(errMessage: 'No internet connection'));
      }
    });
  }
}
