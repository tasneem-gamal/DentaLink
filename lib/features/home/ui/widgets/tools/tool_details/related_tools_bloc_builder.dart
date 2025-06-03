import 'package:dentalink/core/widgets/custom_loading_indicator.dart';
import 'package:dentalink/features/home/logic/related_tools_cubit/related_tools_cubit.dart';
import 'package:dentalink/features/home/ui/widgets/tools/tool_details/related_tools_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelatedToolsBlocBuilder extends StatelessWidget {
  const RelatedToolsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelatedToolsCubit, RelatedToolsState>(
      buildWhen: (previous, current) =>
          current is RelatedToolsLoading ||
          current is RelatedToolsLoaded ||
          current is RelatedToolsError ||
          current is RelatedToolsEmpty,
      builder: (context, state) {
        if (state is RelatedToolsLoading) {
          return const CustomLoadingIndicator();
        } else if (state is RelatedToolsLoaded) {
          return RelatedToolsListView(
            relatedToolsList: state.tools,
          );
        } else if (state is RelatedToolsError) {
          return Center(
              child: SizedBox(
            child: Text(state.errMessage),
          ));
        } else if (state is RelatedToolsEmpty) {
          return Center(
              child: SizedBox(
            child: Text(state.message),
          ));
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
