import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_img.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/home_view/home_view_widgets/custom_row_text.dart';
import 'package:flutter/material.dart';



class CustomEventMatch extends StatelessWidget {
  const CustomEventMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: screenWidth(20)),
      width: screenWidth(1),
      height: screenWidth(1.8),
      decoration: BoxDecoration(
          color: AppColors.blueColor, borderRadius: BorderRadius.circular(20)),
      child: Stack(children: [
        Positioned(
            top: screenWidth(40),
            right: screenWidth(2.22),
            child: CustomText(
                text: ' المباراة القادمة', styleType: TextStyleType.SUBTITLE)),
        Align(
            alignment: Alignment.centerRight,
            child: CustomImg(
              name: 'out (83) 1',
              width: screenWidth(2.8),
              fit: BoxFit.fill,
            )),
        Positioned(
            top: screenWidth(10.6),
            right: screenWidth(2.6),
            child: CustomImg(name: 'Rectangle 27', height: screenWidth(8.5))),
        Positioned(
            top: screenWidth(5),
            right: screenWidth(2.8),
            child: CustomText(
              text: 'ALWATHBA',
              styleType: TextStyleType.SMALL,
            )),

        Positioned(
            top: screenWidth(10),
            right: screenWidth(1.4),
            child: CustomImg(name: 'Rectangle 87', height: screenWidth(9))),
        Positioned(
            top: screenWidth(5),
            right: screenWidth(1.4),
            child: CustomText(
              text: 'ALkarama',
              styleType: TextStyleType.SMALL,
            )),
        Positioned(
            top: screenWidth(8),
            right: screenWidth(1.75),
            child: CustomText(
              text: 'VS',
              styleType: TextStyleType.SUBTITLE,
              fontWeight: FontWeight.w800,
            )),
        Positioned(
          top: screenWidth(3.6),
          right: screenWidth(2.8),
          child: Column(
            children: [
              
              CustomRow(icon: 'icons8-date-50 (1) 1', text: 'الجمعة 2023/12/15 '),
              CustomRow(icon: 'Vector', text: 'الساعة الثانية ظهرا'),
              CustomRow(icon: 'icons8-stadium-50 1', text: 'ملعب الباسل - حمص'),
              CustomRow(icon: 'icons8-retro-tv-50 (1) 1', text: 'بث مباشر على قناة سورية')
             ]                
          ),
        ),       
      ]),
    );
  }
}
