import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String iconName;
  final String title;
  final String text;

  const MyContainer({
    super.key,
    required this.iconName,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(1.8),
      height: screenWidth(1.3),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.blueColor, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              end: screenWidth(40),
              top: screenWidth(40),
              start: screenWidth(40),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/pngs/$iconName',
                  ),
                  CustomText(
                    text: title,
                    styleType: TextStyleType.SUBTITLE,
                    textColor: AppColors.whiteColor,
                    fontWeight: FontWeight.w700,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.circular(10)),
              width: screenWidth(2),
              height: screenWidth(4),
            ),
          ),
          SizedBox(
            height: screenWidth(50),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: screenWidth(50)),
            child: CustomText(
              text: text,
              styleType: TextStyleType.BODY,
              fontWeight: FontWeight.w500,
              textColor: AppColors.blackColor,
            ),
          )
        ],
      ),
    );
  }
}
