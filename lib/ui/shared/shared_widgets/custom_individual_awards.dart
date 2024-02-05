import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class Individual_Awards extends StatelessWidget {
  final String playername;
  final String awardsname;
  final String text;
  const Individual_Awards(
      {super.key,
      required this.playername,
      required this.awardsname,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: screenWidth(2.4),
        height: screenWidth(1.4),
        decoration: BoxDecoration(
            color: AppColors.blueColor,
            borderRadius: BorderRadius.circular(35)),
        child: Column(
          children: [
            Image.asset(
              'assets/images/pngs/individual_awards.png',
            ),
            CustomText(
                text: playername,
                styleType: TextStyleType.BODY,
                textColor: AppColors.whiteColor,
                fontWeight: FontWeight.w300),
            CustomText(
                text: awardsname,
                styleType: TextStyleType.BODY,
                textColor: AppColors.whiteColor,
                fontWeight: FontWeight.w300),
            CustomText(
                text: text,
                styleType: TextStyleType.BODY,
                textColor: AppColors.whiteColor,
                fontWeight: FontWeight.w300),
          ],
        ));
  }
}
