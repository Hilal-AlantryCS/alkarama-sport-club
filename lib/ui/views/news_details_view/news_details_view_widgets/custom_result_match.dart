import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_container_video.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/news_details_view/news_details_view_widgets/custom_statistics_match.dart';
import 'package:flutter/material.dart';



class CustomResultMatch extends StatelessWidget {
  const CustomResultMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       width: screenWidth(1),
      decoration: BoxDecoration(
          color: AppColors.blueColor,
          borderRadius: BorderRadiusDirectional.only(
              topEnd: Radius.circular(40),
              topStart: Radius.circular(40))),
      child:Padding(
        padding:EdgeInsetsDirectional.only(start: screenWidth(30),end: screenWidth(30),top: screenWidth(20),),
        child: ListView(
          
          children: [
            CustomText(text: 'الكرامة يتغلب على جاره فريق الوثبة بهدفين مقابل هدف'
,styleType: TextStyleType.CUSTOM,fontSize: screenWidth(25),fontWeight: FontWeight.w800,textColor: AppColors.whiteColor,),
            SizedBox(height: screenWidth(30),),
            CustomText(text: 'سجل لفريقنا : الهدف الاول محمود الاسود في الدقيقة 34 والهدف الثاني باهوز محمد في الدقيقة 75',textColor: AppColors.whiteColor,),
            SizedBox(height: screenWidth(30),),
            CustomText(text: 'احصائيات المباراة',styleType: TextStyleType.CUSTOM,fontSize: screenWidth(23),textColor: AppColors.whiteColor,),
            SizedBox(height: screenWidth(40),),
            CustomStatisticsMatch(),
            SizedBox(height: screenWidth(20),),
            CustomContainerVideo(text: 'ملخص المباراة والاهداف', color: AppColors.whiteColor),
            SizedBox(height: screenWidth(20),),
            
          ],
        ),
      )
    );
  }
}