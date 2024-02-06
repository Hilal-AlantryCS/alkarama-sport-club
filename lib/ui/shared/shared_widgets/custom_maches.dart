
import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class CustomMaches extends StatelessWidget {
  const CustomMaches({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(1.2),
      height: screenWidth(1.5),
      color: AppColors.greyColor,
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: screenWidth(30)),
        child: Column(
          children: [
            CustomText(
              text: 'الجمعة 2023/5/26',
              styleType: TextStyleType.DATE,
              textColor: AppColors.offBlueColor,
              fontWeight: FontWeight.w400,
            ),
            CustomText(
              text: 'عصراً 12:12',
              styleType: TextStyleType.DATE,
              textColor: AppColors.offBlueColor,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(
              height: screenWidth(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/pngs/alkarama_matches.png',
                      width: screenWidth(5.2),
                    ),
                    CustomText(
                      text: 'الكرامة',
                      styleType: TextStyleType.NAME,
                      textColor: AppColors.offBlueColor,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: 'صاحب اول هدف',
                      styleType: TextStyleType.CUSTOM,
                      textColor: AppColors.offBlueColor,
                      fontSize: screenWidth(50),
                      fontWeight: FontWeight.w300,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomText(
                      text: 'ملعب خالد بن الوليد',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: AppColors.blackColor,
                    ),
                    CustomText(
                      text: '1:0',
                      styleType: TextStyleType.CUSTOM,
                      textColor: AppColors.orangeColor,
                      fontSize: screenWidth(12),
                      fontWeight: FontWeight.w800,
                    ),
                    Container(
                      width: screenWidth(12),
                      height: screenWidth(20),
                      decoration: BoxDecoration(
                          color: AppColors.orangeColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: CustomText(
                          text: 'live',
                          styleType: TextStyleType.CUSTOM,
                          textColor: AppColors.whiteColor,
                          fontSize: screenWidth(30),
                        ),
                      ),
                    ),
                    CustomText(
                      text: 'الشوط',
                      styleType: TextStyleType.CUSTOM,
                      textColor: AppColors.offBlueColor,
                      fontSize: screenWidth(32),
                    ),
                    CustomText(
                      text: 'الاول',
                      styleType: TextStyleType.CUSTOM,
                      textColor: AppColors.offBlueColor,
                      fontSize: screenWidth(32),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/pngs/logo_jablah.png',
                      width: screenWidth(5.2),
                    ),
                    CustomText(
                      text: 'جبلة',
                      styleType: TextStyleType.NAME,
                      textColor: AppColors.offBlueColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
