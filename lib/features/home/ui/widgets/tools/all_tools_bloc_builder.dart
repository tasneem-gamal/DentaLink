import 'package:dentalink/core/widgets/custom_loading_indicator.dart';
import 'package:dentalink/features/home/logic/all_tools_cubit/all_tools_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllToolsBlocBuilder extends StatelessWidget {
  final Widget Function(AllToolsLoaded state) builder;

  const AllToolsBlocBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllToolsCubit, AllToolsState>(
      buildWhen: (previous, current) =>
          current is AllToolsLoading ||
          current is AllToolsLoaded ||
          current is AllToolsError,
      builder: (context, state) {
        if (state is AllToolsLoading) {
          return const CustomLoadingIndicator();
        } else if (state is AllToolsLoaded) {
          return builder(state);
        } else if (state is AllToolsError) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
