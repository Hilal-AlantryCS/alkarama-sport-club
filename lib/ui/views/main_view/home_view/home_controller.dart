
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs; 

  void onIndexChanged(int index, CarouselPageChangedReason reason) {
    currentIndex.value = index; 
  }
}