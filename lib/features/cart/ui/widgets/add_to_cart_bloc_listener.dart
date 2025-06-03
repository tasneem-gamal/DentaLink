import 'package:dentalink/features/home/logic/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToCartBlocListener extends StatelessWidget {
  final Widget child;

  const AddToCartBlocListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddToCartCubit, AddToCartState>(
      listenWhen: (previous, current) =>
          current is AddToCartSuccess || current is AddToCartFailure,
      listener: (context, state) {
        if (state is AddToCartSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        } else if (state is AddToCartFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage)),
          );
          // } else if (state is AddToCartEmpty) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text(state.message)),
          //   );
        }
      },
      child: child,
    );
  }
}
