part of 'remove_from_cart_cubit.dart';

class RemoveFromCartState {}

class RemoveFromCartInitial extends RemoveFromCartState {}

class RemoveFromCartLoading extends RemoveFromCartState {}

class RemoveFromCartSuccess extends RemoveFromCartState {
  final String message;
  RemoveFromCartSuccess({required this.message});
}

class RemoveFromCartFailure extends RemoveFromCartState {
  final String errMessage;
  RemoveFromCartFailure({required this.errMessage});
}
