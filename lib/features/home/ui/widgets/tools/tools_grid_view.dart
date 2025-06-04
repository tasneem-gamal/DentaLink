import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/core/widgets/item_container_patient_tool.dart';
import 'package:dentalink/features/home/data/models/tools_data.dart';
import 'package:flutter/material.dart';

class ToolsGridView extends StatelessWidget {
  const ToolsGridView({
    super.key,
    required this.tools,
  });
  final List<Tool> tools;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.65,
      ),
      itemCount: tools.length,
      itemBuilder: (context, index) => ItemContainerPatientTool(
        image: 'assets/images/tools.png',
        imageWidth: 180,
        itemTitle: tools[index].name,
        firstLabel: 'Price: ',
        firstLabelText: tools[index].price.toString(),
        secondLabel: 'Description: ',
        secondLabelText: tools[index].description,
        onTap: () {
          context.pushNamed(
            Routes.toolDetails,
            arguments: tools[index],
          );
        },
      ),
    ));
  }
}
