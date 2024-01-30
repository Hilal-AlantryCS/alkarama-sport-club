import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class CustomPercentIndicator extends StatelessWidget {
  final String text;
  final double percent;
  final String resultfirstteam;
  final String resulttwoteam;
  const CustomPercentIndicator({super.key, required this.text, required this.percent, required this.resultfirstteam, required this.resulttwoteam});

  @override
  Widget build(BuildContext context) {
    return Container(      
      height: screenWidth(8.4),
      child: Stack( 
        children: [
          Positioned(
            top:screenWidth(16),
            right: screenWidth(27),
            child: Row(
              children: [
              CustomText(text: resultfirstteam,textColor:AppColors.blackColor,styleType: TextStyleType.CUSTOM,fontSize: screenWidth(27),),
              LinearPercentIndicator(
                width:screenWidth(1.35),
                lineHeight:screenWidth(60),
                percent: percent,
               barRadius: Radius.circular(20),
                progressColor: AppColors.orangeColor,
                backgroundColor: AppColors.blueColor,
              ),
              CustomText(text: resulttwoteam,textColor:AppColors.blackColor,styleType: TextStyleType.CUSTOM,fontSize: screenWidth(27),),
              ],
            ),
          ),
          Align(
           alignment: Alignment.center,      
            child: CustomText(text: text,textColor:AppColors.blackColor,styleType: TextStyleType.CUSTOM,fontSize: screenWidth(27),)),
        ],
      ),
    );
  }
}