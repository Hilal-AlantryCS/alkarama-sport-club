import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_img.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/main_view/home_view/home_view_widgets/custom_row_text.dart';
import 'package:flutter/material.dart';

class CustomLatestNews extends StatelessWidget {
  final double? marginend;
  final double? marginstart;
  final double? margintop;
  final double? marginbottom;
  const CustomLatestNews(
      {super.key,
      this.marginend,
      this.marginstart,
      this.margintop,
      this.marginbottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        end: marginend ?? screenWidth(30),
        start: marginstart ?? screenWidth(30),
        bottom: marginbottom ?? screenWidth(30),
      ),
      padding: EdgeInsets.all(screenWidth(40)),
      width: screenWidth(1.12),
      height: screenWidth(3),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          CustomImg(
            name: 'Rectangle 90',
            width: screenWidth(2.5),
            height: screenWidth(2.5),
          ),
          Positioned(
            top: screenWidth(30),
            right: screenWidth(2.5),
            child: Column(
              children: [
                CustomText(text: '''نهاية اللقاء بفوز فريقنا على فريق
الوثبة بهدفين مقابل هدف  ''', textColor: AppColors.blackColor),
                SizedBox(
                  height: screenWidth(30),
                ),
                Row(
                  children: [
                    CustomRow(
                      icon: 'ic_eye',
                      text: '300',
                      color: AppColors.greyColor,
                      textColor: AppColors.greyColor,
                      styleType: TextStyleType.BODY,
                    ),
                    SizedBox(
                      width: screenWidth(6),
                    ),
                    CustomRow(
                      icon: 'Vector',
                      text: '4 أيام',
                      color: AppColors.greyColor,
                      textColor: AppColors.greyColor,
                      styleType: TextStyleType.BODY,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
