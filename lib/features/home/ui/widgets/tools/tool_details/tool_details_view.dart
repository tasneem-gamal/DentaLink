import 'package:dentalink/core/widgets/general_custom_app_bar.dart';
import 'package:dentalink/features/home/ui/widgets/tools/tool_details/tool_details_view_body.dart';
import 'package:flutter/material.dart';

class ToolDetailsView extends StatelessWidget {
  const ToolDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GeneralCustomAppBar(title: 'Tool details'),
      body: ToolDetailsViewBody(),
    );
  }
}