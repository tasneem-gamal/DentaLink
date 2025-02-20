import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/features/home/ui/widgets/latest_case_item.dart';
import 'package:flutter/material.dart';

class LatestCasesListView extends StatelessWidget {
  const LatestCasesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const LatestCaseItem(), 
      separatorBuilder: (context, index) => verticalSpace(14), 
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}