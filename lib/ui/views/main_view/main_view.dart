import 'package:alkarama_sport_club/core/enums/bottom_navigation_enum.dart';
import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/main_view/home_view/home_view.dart';
import 'package:alkarama_sport_club/ui/views/main_view/maches_view/matches_view.dart';
import 'package:alkarama_sport_club/ui/views/main_view/main_controller.dart';
import 'package:alkarama_sport_club/ui/views/main_view/main_view_widgets/bottom_navigation_bar.dart';
import 'package:alkarama_sport_club/ui/views/main_view/musuem_view/musuem_view.dart';
import 'package:alkarama_sport_club/ui/views/main_view/sccore_view/sccore_view.dart';
import 'package:alkarama_sport_club/ui/views/player_and_admins_view/player_and_admins_view.dart';
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
        body: Container(
          height: screenHeight(1),
          child: Stack(
            children: [
              Container(
                height: screenHeight(1) - screenWidth(3),
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  children: [
                    HomeView(),
                    SccoreView(),
                    MatchesView(),
                    PlayerAndAdminsView(),
                    MusuemView(),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomStart,
                child: CustomBottmNavigation(
                  onTap: (selectedView, index) {
                    controller.selecte.value = selectedView;

                    controller.pageController.jumpToPage(index);
                    controller.index.value = 0;
                    //! here notify onTap in navitem
                  },
                  selectedView: controller.selecte.value,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.selecte.value = BottomNavigationEnum.MATCHES;
                        controller.index.value = 2;
                        controller.pageController.jumpToPage(2);
                      },
                      child: Container(
                        width: screenWidth(5),
                        height: screenWidth(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColors.blueColor,
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/pngs/rectangle.png",
                            width: screenWidth(7),
                            height: screenWidth(7),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.selecte.value = BottomNavigationEnum.MATCHES;
                        controller.index.value = 2;
                        controller.pageController.jumpToPage(2);
                      },
                      child: CustomText(
                        text: "المباريات",
                        styleType: TextStyleType.BODY,
                        textColor: controller.index.value == 2
                            ? AppColors.orangeColor
                            : AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }));
  }
}
