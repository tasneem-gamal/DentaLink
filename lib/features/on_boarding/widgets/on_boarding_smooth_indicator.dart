import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingSmoothIndicator extends StatelessWidget {
  const OnBoardingSmoothIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.06),
        child: SmoothPageIndicator(
          controller: PageController(),
          count: 2,
          effect: const ExpandingDotsEffect(
              activeDotColor: Colors.blue, dotHeight: 8),
        ),
      ),
    );
  }
}
