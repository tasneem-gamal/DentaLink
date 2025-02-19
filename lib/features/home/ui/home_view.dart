import 'package:dentalink/features/home/ui/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: Image.asset(
          'assets/images/dentalink2.png',
          width: MediaQuery.of(context).size.width * 0.6,
          fit: BoxFit.contain,
        ),
      ),
      body: const SafeArea(child: HomeViewBody()),
    );
  }
}