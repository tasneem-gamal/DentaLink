import 'package:dentalink/core/di/dependency_injection.dart';
import 'package:dentalink/core/widgets/general_custom_app_bar.dart';
import 'package:dentalink/features/home/logic/all_tools_cubit/all_tools_cubit.dart';
import 'package:dentalink/features/home/ui/widgets/tools/tools_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToolsView extends StatelessWidget {
  const ToolsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AllToolsCubit>()..getAllTools(),
      child: const Scaffold(
        appBar: GeneralCustomAppBar(title: 'Tools'),
        body: ToolsViewBody(),
      ),
    );
  }
}
