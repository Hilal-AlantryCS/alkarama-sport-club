import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_img.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';



class CustomMatch extends StatelessWidget {
  const CustomMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(screenWidth(40)),
      width: screenWidth(1.12),
      height: screenWidth(3),
       decoration: BoxDecoration(
          color: AppColors.offwhiteColor),
      child: Stack(
        children: [
           Positioned(
            top: screenWidth(40),
            right: screenWidth(20),
             child: Column(
               children: [
                CustomImg(name: 'ic_alkarama' ,height: screenWidth(7)),
                SizedBox(height: screenWidth(40),),
                 CustomText(text: 'الكرامة',textColor: AppColors.blackColor,styleType: TextStyleType.CUSTOM,fontSize: screenWidth(29),fontWeight: FontWeight.w700,),
             
               ],
             ),
           ),
             Positioned(
            top: screenWidth(90),
            right: screenWidth(1.5),
             child: Column(
               children: [
                CustomImg(name: 'Rectangle 27', height: screenWidth(5.8)),
                SizedBox(height: screenWidth(100),),
                CustomText(text: 'الوثبة',textColor: AppColors.blackColor,styleType: TextStyleType.CUSTOM,fontSize: screenWidth(29),fontWeight: FontWeight.w700,),
             
               ],
             ),
           ),
           
         
           Positioned(
            top: screenWidth(30),
            right: screenWidth(1.75),
            child: CustomText(text: '0',styleType: TextStyleType.CUSTOM,fontSize: screenWidth(10),fontWeight: FontWeight.w400,textColor: AppColors.blackColor)),
           Positioned(
             top: screenWidth(40),
            right: screenWidth(4.55),
            child: CustomText(text: '5',styleType: TextStyleType.CUSTOM,fontSize: screenWidth(10),fontWeight: FontWeight.w400,textColor: AppColors.blackColor)),
           Positioned(
             top: screenWidth(40),
            right: screenWidth(2.95),
            child: CustomText(text: 'الملعب البلدي',styleType: TextStyleType.SMALL,fontWeight: FontWeight.w400,textColor: AppColors.blackColor)),
            Positioned(
              top: screenWidth(5.1),
            right: screenWidth(3.4),
              child: Row(
                children: [
                  CustomText(text: 'السبت 2 /12',styleType: TextStyleType.CUSTOM,fontSize: screenWidth(36),textColor: AppColors.blackColor,),
                    SizedBox(width: screenWidth(50),),
                   CustomText(text: '12:12 م',styleType: TextStyleType.CUSTOM,fontSize: screenWidth(36),textColor: AppColors.blackColor,),
                ],
              ))
        ],
      ),
    );
  }
}