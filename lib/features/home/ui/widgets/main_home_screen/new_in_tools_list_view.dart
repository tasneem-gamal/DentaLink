import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/core/widgets/item_container_patient_tool.dart';
import 'package:dentalink/features/home/data/models/tools_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewInToolsListView extends StatelessWidget {
  final List<Tool> latestToolsList;
  const NewInToolsListView({
    super.key,
    required this.latestToolsList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => horizontalSpace(10),
        scrollDirection: Axis.horizontal,
        itemCount: latestToolsList.length,
        itemBuilder: (context, index) => ItemContainerPatientTool(
          image: 'assets/images/tools.png',
          itemTitle: latestToolsList[index].name,
          firstLabel: 'Price: ',
          firstLabelText: '${latestToolsList[index].price}',
          secondLabel: 'Description:',
          secondLabelText: latestToolsList[index].description,
          onTap: () {
            context.pushNamed(Routes.toolDetails,
                arguments: latestToolsList[index]);
          },
        ),
      ),
    );
  }
}
