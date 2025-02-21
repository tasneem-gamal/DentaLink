import 'package:dentalink/features/home/ui/widgets/side_menu_dark_mode_item.dart';
import 'package:dentalink/features/home/ui/widgets/side_menu_item.dart';
import 'package:dentalink/features/home/ui/widgets/side_menu_top_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';

class AppSideMenu extends StatelessWidget {
  const AppSideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        backgroundColor: Theme.of(context).canvasColor,
        child: ListView(
          children: [
            const SideMenuTopBar(),
            verticalSpace(30),
            const SideMenuItem(
              text: 'My posts',
            ),
            verticalSpace(10),
            const SideMenuItem(
              text: 'Favourites',
            ),
            verticalSpace(10),
            const SideMenuDarkModeItem(
              text: 'Dark Mode',
            ),
            verticalSpace(10),
            const SideMenuItem(
              text: 'About us',
            ),
            verticalSpace(10),
            const SideMenuItem(
              text: 'Terms & Conditions',
            ),
            verticalSpace(10),
            const SideMenuItem(
              text: 'Privacy Policy',
            ),
          ],
        ),
      ),
    );
  }
}
