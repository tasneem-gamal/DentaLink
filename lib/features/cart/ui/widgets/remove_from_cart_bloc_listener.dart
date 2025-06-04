import 'package:dentalink/features/home/logic/remove_from_cart/remove_from_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoveFromCartBlocListener extends StatelessWidget {
  final Widget child;

  const RemoveFromCartBlocListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RemoveFromCartCubit, RemoveFromCartState>(
      listenWhen: (previous, current) =>
          current is RemoveFromCartSuccess || current is RemoveFromCartFailure,
      listener: (context, state) {
        if (state is RemoveFromCartSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        } else if (state is RemoveFromCartFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage)),
          );
        }
      },
      child: child,
    );
  }
}
