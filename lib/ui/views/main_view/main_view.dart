import 'package:alkarama_sport_club/ui/views/main_view/about_club_view/about_club_view.dart';
import 'package:alkarama_sport_club/ui/views/main_view/home_view/home_view.dart';
import 'package:alkarama_sport_club/ui/views/main_view/main_controller.dart';
import 'package:alkarama_sport_club/ui/views/main_view/main_view_widgets/bottom_navigation_bar.dart';
import 'package:alkarama_sport_club/ui/views/main_view/matches_view/matches_view.dart';
import 'package:alkarama_sport_club/ui/views/main_view/museum_view/museum_view.dart';
import 'package:alkarama_sport_club/ui/views/main_view/sccore_view/sccore_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Obx(() {
      return Scaffold(
        bottomNavigationBar: CustomBottmNavigation(
          onTap: (selectedView, index) {
            controller.selecte.value = selectedView;

            controller.pageController.jumpToPage(index);
            //! here notify onTap in navitem
          },
          selectedView: controller.selecte.value,
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          children: [
            HomeView(),
            SccoreView(),
            MatchesView(),
            AboutClubView(),
            MuseumView(),
          ],
          // onPageChanged: ((index) {
          //   if (index == 0)
          //     setState(() {
          //       selecte = BottomNavigationEnum.HOME;
          //     });
          //   if (index == 1)
          //     setState(() {
          //       selecte = BottomNavigationEnum.FAVORITE;
          //     });
          //   if (index == 2)
          //     setState(() {
          //       selecte = BottomNavigationEnum.NOTIFICATIONS;
          //     });
          //   if (index == 3)
          //     setState(() {
          //       selecte = BottomNavigationEnum.SETTINGS;
          //     });
          // }),
        ),
      );
    }));
  }
}