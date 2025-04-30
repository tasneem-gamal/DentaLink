import 'package:dentalink/core/widgets/custom_loading_indicator.dart';
import 'package:dentalink/features/home/logic/latest_tools_cubit/latest_tools_cubit.dart';
import 'package:dentalink/features/home/ui/widgets/main_home_screen/new_in_tools_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LatestToolsBlocBuilder extends StatelessWidget {
  const LatestToolsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LatestToolsCubit, LatestToolsState>(
      buildWhen: (previous, current) =>
          current is LatestToolsLoading ||
          current is LatestToolsLoaded ||
          current is LatestToolsError,
      builder: (context, state) {
        if (state is LatestToolsLoading) {
          return const CustomLoadingIndicator();
        } else if (state is LatestToolsLoaded) {
          return NewInToolsListView(
            latestToolsList: state.latestTools,
          );
        } else if (state is LatestToolsError) {
          return SizedBox(
            child: Text(state.errMessage),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
