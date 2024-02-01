import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/views/match_details-cahnge_view/match_details-cahnge_view.dart';
import 'package:alkarama_sport_club/ui/views/match_details_plan_view/match_details_plan_view.dart';
import 'package:alkarama_sport_club/ui/views/match_details_team_extra_view/match_details_team_extra_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomRowText extends StatelessWidget {
  final bool isSelestedone;
  final bool isSelestedtwo;
  final bool isSelestedthree;
  const CustomRowText({
    super.key, required this.isSelestedone, required this.isSelestedtwo, required this.isSelestedthree,
 
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
            onTap: () {
              Get.to(MatchDetailsPlanView());
            },
            child: Container(
                padding: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide( color: isSelestedthree ? AppColors.blackColor : Colors.transparent, width: 1))),
                child: CustomText(
                  text: 'خطة الفريق',
                  styleType: TextStyleType.SUBTITLE,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.blackColor,
                ))),
        InkWell(
            onTap: () {
              Get.to(MatchDetailsChangeView());
            },
            child: Container(
                padding: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: isSelestedtwo ? AppColors.blackColor : Colors.transparent, width: 1))),
                child: CustomText(
                  text: 'التبديلات',
                  styleType: TextStyleType.SUBTITLE,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.blackColor,
                ))),
        InkWell(
            onTap: () {
               Get.to(MatchDtailsTeamView());
             
            },
            child: Container(
                padding: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: isSelestedone ? AppColors.blackColor : Colors.transparent, width: 1,))),
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
