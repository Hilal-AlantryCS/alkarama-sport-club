import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/views/match_details/match_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomRowText extends StatelessWidget {
  final bool isSelestedone;
  final bool isSelestedtwo;
  final bool isSelestedthree;
  CustomRowText({
    super.key,
    required this.isSelestedone,
    required this.isSelestedtwo,
    required this.isSelestedthree,
  });
  MatchDetailsController controller = Get.put(MatchDetailsController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
            onTap: () {
              controller.pageController.jumpToPage(0);
            },
            child: Container(
                padding: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: isSelestedthree
                                ? AppColors.blackColor
                                : Colors.transparent,
                            width: 1))),
                child: CustomText(
                  text: 'خطة الفريق',
                  styleType: TextStyleType.SUBTITLE,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.blackColor,
                ))),
        InkWell(
            onTap: () {
              controller.pageController.jumpToPage(1);
            },
            child: Container(
                padding: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: isSelestedtwo
                                ? AppColors.blackColor
                                : Colors.transparent,
                            width: 1))),
                child: CustomText(
                  text: 'التبديلات',
                  styleType: TextStyleType.SUBTITLE,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.blackColor,
                ))),
        InkWell(
            onTap: () {
              controller.pageController.jumpToPage(2);
            },
            child: Container(
                padding: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color:
                      isSelestedone ? AppColors.blackColor : Colors.transparent,
                  width: 1,
                ))),
                child: CustomText(
                  text: 'الاحتياط',
                  styleType: TextStyleType.SUBTITLE,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.blackColor,
                ))),
      ],
    );
  }
}
