import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/enums/bottom_navigation_enum.dart';

class MainController extends GetxController {
  PageController pageController = PageController(
    initialPage: 0,
  );
  RxInt index = 0.obs;
  Rx<BottomNavigationEnum> selecte = BottomNavigationEnum.HOME.obs;
}
