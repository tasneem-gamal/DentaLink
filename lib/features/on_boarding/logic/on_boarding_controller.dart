import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  var currentPageIndex = 0.obs; // observer which is going to change the design without using stateful widget

  void updatePageIndicator(index){
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage(){
    if(currentPageIndex.value == 1){
      //push to home
    } else{
      int page = currentPageIndex.value + 1 ;
      pageController.jumpToPage(page);
    }
  }
}