part of 'add_to_cart_cubit.dart';

class AddToCartState {}

class AddToCartInitial extends AddToCartState {}

class AddToCartLoading extends AddToCartState {}

class AddToCartSuccess extends AddToCartState {
  final String message;

  AddToCartSuccess({required this.message});
}

class AddToCartFailure extends AddToCartState {
  final String errMessage;

  AddToCartFailure({required this.errMessage});
}
