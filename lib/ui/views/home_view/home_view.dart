
import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_container_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_event_match.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_latest_news.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/home_view/home_controller.dart';
import 'package:alkarama_sport_club/ui/views/news_view/news_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        TobContainer(text: 'نادي الكرامة الرياضي',isimageball:true),
        SizedBox(
          height: screenWidth(13),
        ),
        Obx(() {
          print(controller.currentIndex.value);
            return CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                viewportFraction: 0.92,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  if(controller.currentIndex.value<2)
                  controller.currentIndex++;
                  else 
                  {
                    controller.currentIndex.value=0;
                  }
                },
              ),
              items: [
                Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: screenWidth(1),
                      child: CustomEventMatch(),
                    );
                  },
                ),
              ],
            );
          }),
           SizedBox(
          height: screenWidth(13),
        ),
          Obx(() {
            return DotsIndicator(
              dotsCount: 3,
              position:controller.currentIndex.value,
              decorator: DotsDecorator(
                color: AppColors.blueColor,
                activeColor: AppColors.orangeColor,
              ),
            );
          }),
        SizedBox(
          height: screenWidth(13),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomContainerText(
                text: 'آخر الأخبار',
                widthone: screenWidth(5.1),
                widthtwo: screenWidth(20),
                widththree: screenWidth(15)),
            Padding(
                padding: EdgeInsetsDirectional.only(end: screenWidth(20)),
                child: InkWell(
                  onTap: (){
                    Get.to(NewsView());
                  },
                  child: CustomText(
                      text: 'مشاهدة الكل',
                      
                      textColor: AppColors.blackColor,
                      fontWeight: FontWeight.w400),
                )),
          ],
        ),
        SizedBox(
          height: screenWidth(10),
        ),
        Container(
          margin: EdgeInsetsDirectional.only(start: screenWidth(60)),
          height: screenWidth(3),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,            
              itemBuilder: (context, index) {
                return CustomLatestNews(
                  marginstart:screenWidth(2000),marginbottom:screenWidth(2000)
                  );
              }),
        ),
      ]),
    ));
  }
}
