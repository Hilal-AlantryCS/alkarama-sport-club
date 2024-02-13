import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class CustomUpcomingMatches extends StatelessWidget {
  final bool? isLive;
  const CustomUpcomingMatches({super.key, this.isLive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 6, color: AppColors.offGreyColor, spreadRadius: 1)
          ]),
      width: screenWidth(1.1),
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
                isLive!
                    ? Container(
                        margin: EdgeInsets.only(
                            bottom: screenWidth(100), top: screenWidth(20)),
                        width: screenWidth(10),
                        height: screenWidth(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(50),
                          color: AppColors.redColor,
                        ),
                        alignment: Alignment.center,
                        child: CustomText(
                          text: 'live',
                          styleType: TextStyleType.CUSTOM,
                          fontSize: screenWidth(35),
                          textColor: AppColors.whiteColor,
                        ))
                    : SizedBox(
                        height: screenWidth(45),
                      ),
                CustomText(
                  text: 'السبت 12/2 12:12م',
                  textColor: AppColors.blackColor,
                  styleType: TextStyleType.DATE,
                  fontWeight: isLive! ? FontWeight.w500 : FontWeight.bold,
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
