import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/item_container_patient_tool.dart';
import 'package:dentalink/features/home/data/models/tools_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RelatedToolsListView extends StatelessWidget {
  final List<Tool> relatedToolsList;
  const RelatedToolsListView({
    super.key,
    required this.relatedToolsList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: ListView.separated(
          separatorBuilder: (context, index) => horizontalSpace(10),
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ItemContainerPatientTool(
                image: 'assets/images/tools.png',
                itemTitle: relatedToolsList[index].name,
                firstLabel: 'Price: ',
                firstLabelText: relatedToolsList[index].price.toString(),
                secondLabel: 'Description: ',
                secondLabelText: relatedToolsList[index].description,
              )),
    );
  }
}
