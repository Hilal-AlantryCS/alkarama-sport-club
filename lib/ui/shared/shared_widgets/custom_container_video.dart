import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_img.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';


class CustomContainerVideo extends StatelessWidget {
  final String text;
  final Color color;
  const CustomContainerVideo({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(screenWidth(40)),
      width: screenWidth(1),
      height: screenWidth(3.6),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(20)),
      child:Stack(
        children: [
           CustomImg(name: 'player',width: screenWidth(2.4),height: screenWidth(2.4),),
           Positioned(
             top: screenWidth(20),
            right: screenWidth(6.9),
            child: CustomImg(name: 'youtube',width: screenWidth(9),height: screenWidth(9),),),
            Positioned(
            top: screenWidth(30),
            right: screenWidth(2.3),
            child: CustomText(text: text
,styleType: TextStyleType.SUBTITLE,textColor: AppColors.blackColor,fontWeight: FontWeight.w400,),)
        ],
      )
    );
  }
}