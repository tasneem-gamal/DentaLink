import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/features/home/logic/theme_provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideMenuDarkModeItem extends StatelessWidget {
  const SideMenuDarkModeItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ColorsManager.otherLightGrayShade),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: CustomTextStyles.font12BlackRegular,
            ),
            Switch(
              activeColor: ColorsManager.mainBlue,
              inactiveTrackColor: ColorsManager.otherLightGrayShade,
              value: themeProvider.isDarkMode,
              onChanged: (value){
                themeProvider.toggleTheme();
              },
            )
          ],
        ));
  }
}