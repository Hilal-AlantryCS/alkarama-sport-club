
import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class CustomUpcomingMatches extends StatelessWidget {
  const CustomUpcomingMatches({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.greyColor,
      width: screenWidth(1.25),
      height: screenWidth(3.5),
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: screenWidth(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/pngs/alkarama_matches.png',
                  width: screenWidth(6.5),
                ),
                SizedBox(
                  height: screenWidth(60),
                ),
                CustomText(
                  text: 'الكرامة',
                  styleType: TextStyleType.BODY,
                  textColor: AppColors.blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            Column(
              children: [
                CustomText(
                  text: 'الملعب البلدي',
                  textColor: AppColors.blackColor,
                  styleType: TextStyleType.SMALL,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: screenWidth(45),
                ),
                CustomText(
                  text: 'السبت 12/2 12:12م',
                  textColor: AppColors.blackColor,
                  styleType: TextStyleType.DATE,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images/pngs/logo_alwathba.png',
                  width: screenWidth(6.5),
                ),
                SizedBox(
                  height: screenWidth(60),
                ),
                CustomText(
                  text: 'الوثبة',
                  styleType: TextStyleType.BODY,
                  textColor: AppColors.blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
