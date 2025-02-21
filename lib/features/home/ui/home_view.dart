import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/features/home/ui/widgets/home_view_body.dart';
import 'package:dentalink/features/home/ui/widgets/side_menu_dark_mode_item.dart';
import 'package:dentalink/features/home/ui/widgets/side_menu_item.dart';
import 'package:dentalink/features/home/ui/widgets/side_menu_top_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState?.openDrawer();
          }, 
          icon: const Icon(Icons.menu)
        ),
        title: Image.asset(
          'assets/images/dentalink2.png',
          width: MediaQuery.of(context).size.width * 0.6,
          fit: BoxFit.contain,
        ),
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          backgroundColor: Colors.white,
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
      ),
      body: const SafeArea(child: HomeViewBody()),
    );
  }
}



