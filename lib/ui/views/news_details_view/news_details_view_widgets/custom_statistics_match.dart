import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_img.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/news_details_view/news_details_view_widgets/custom_container.dart';
import 'package:alkarama_sport_club/ui/views/news_details_view/news_details_view_widgets/custom_percent_indicator.dart';
import 'package:flutter/material.dart';

class CustomStatisticsMatch extends StatelessWidget {
  const CustomStatisticsMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.only(
            start: screenWidth(60), end: screenWidth(60)),
        width: screenWidth(1.16),
        height: screenWidth(1.1),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(40)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenWidth(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  topEnd: Radius.circular(20),
                  bottomEnd: Radius.circular(20),
                ),
                // SizedBox(
                //   width: screenWidth(100),
                // ),
                CustomText(
                  text: 'الكرامة',
                  textColor: AppColors.blackColor,
                  styleType: TextStyleType.CUSTOM,
                  fontSize: screenWidth(27),
                ),
                CustomImg(name: 'ic_alkarama', height: screenWidth(11)),
                // SizedBox(
                //   width: screenWidth(17),
                // ),
                CustomImg(name: 'Rectangle 27', height: screenWidth(8.5)),
                // SizedBox(
                //   width: screenWidth(100),
                // ),
                CustomText(
                  text: 'الوثبة',
                  textColor: AppColors.blackColor,
                  styleType: TextStyleType.CUSTOM,
                  fontSize: screenWidth(27),
                ),
                // SizedBox(
                //   width: screenWidth(100),
                // ),
                CustomContainer(
                  topStart: Radius.circular(20),
                  bottomStart: Radius.circular(20),
                ),
              ],
            ),
            CustomPercentIndicator(
                text: 'التسديدات',
                percent: 0.35,
                resultfirstteam: '9',
                resulttwoteam: '5'),
            CustomPercentIndicator(
                text: 'التسديدات على المرمى',
                percent: 0.25,
                resultfirstteam: '9',
                resulttwoteam: '5'),
            CustomPercentIndicator(
                text: 'الركنيات',
                percent: 0.15,
                resultfirstteam: '9',
                resulttwoteam: '5'),
            CustomPercentIndicator(
                text: 'حالات التسلل',
                percent: 0.50,
                resultfirstteam: '9',
                resulttwoteam: '5'),
            CustomPercentIndicator(
                text: 'الاخطاء',
                percent: 0.45,
                resultfirstteam: '9',
                resulttwoteam: '5'),
            CustomPercentIndicator(
                text: 'بطاقات صفراء',
                percent: 0.50,
                resultfirstteam: '9',
                resulttwoteam: '5')
          ],
        ));
  }
}
