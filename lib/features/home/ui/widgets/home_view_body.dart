import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/features/home/ui/widgets/home_view_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeViewAppBar()
          ],
        ),
      ),
    );
  }
}

