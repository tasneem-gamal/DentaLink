part of 'cart_items_cubit.dart';

class CartItemsState {}

class CartItemsInitial extends CartItemsState {}

class CartItemsLoading extends CartItemsState {}

class CartItemsSuccess extends CartItemsState {
  final List<CartItemModel> cartItemsList;
  CartItemsSuccess({required this.cartItemsList});
}

class CartItemsFailure extends CartItemsState {
  final String errMessage;

  CartItemsFailure({required this.errMessage});
}

class CartItemsEmpty extends CartItemsState {
  final String message;

  CartItemsEmpty({required this.message});
}
