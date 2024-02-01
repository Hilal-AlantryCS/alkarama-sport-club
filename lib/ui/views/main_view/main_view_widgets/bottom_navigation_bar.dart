import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/main_view/main_view_widgets/nav_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/enums/bottom_navigation_enum.dart';

class CustomBottmNavigation extends StatefulWidget {
  final BottomNavigationEnum selectedView;
  final Function(BottomNavigationEnum, int) onTap;
  const CustomBottmNavigation(
      {super.key, required this.selectedView, required this.onTap});

  @override
  State<CustomBottmNavigation> createState() => _CustomBottmNavigationState();
}

class _CustomBottmNavigationState extends State<CustomBottmNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth(3),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  topEnd: Radius.circular(20),
                ),
                color: AppColors.blueColor,
              ),
              height: screenWidth(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  NavItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.HOME, 0);
                    },
                    icon: "assets/images/pngs/ic_home.png",
                    isSelected:
                        widget.selectedView == BottomNavigationEnum.HOME,
                    title: "الرئيسية",
                  ),
                  NavItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.SCCORE, 1);
                    },
                    icon: "assets/images/pngs/ic_improvement.png",
                    isSelected:
                        widget.selectedView == BottomNavigationEnum.SCCORE,
                    title: "النتائج",
                  ),
                  SizedBox(width: screenWidth(7)),
                  // NavItem(
                  //   onTap: () {
                  //     widget.onTap(BottomNavigationEnum.MATCHES, 2);
                  //   },
                  //   icon: "assets/images/pngs/rectangle.png",
                  //   isSelected:
                  //       widget.selectedView == BottomNavigationEnum.MATCHES,
                  //   title: tr("matches_key"),
                  // ),
                  NavItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.ABOUT, 3);
                    },
                    icon: "assets/images/pngs/ic_about_club.png",
                    isSelected:
                        widget.selectedView == BottomNavigationEnum.ABOUT,
                    title: "عن النادي",
                  ),
                  NavItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.MUSEUM, 4);
                    },
                    icon: "assets/images/pngs/ic_museum.png",
                    isSelected:
                        widget.selectedView == BottomNavigationEnum.MUSEUM,
                    title: "المتحف",
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: InkWell(
              onTap: () {
                widget.onTap(BottomNavigationEnum.MATCHES, 2);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
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
                  CustomText(
                    text: "المباريات",
                    styleType: TextStyleType.SUBTITLE,
                    textColor:  AppColors.whiteColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
