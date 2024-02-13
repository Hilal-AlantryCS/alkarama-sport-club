import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';

import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_img1.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class CustomContainerVideo1 extends StatelessWidget {
  final String text;
  final Color color;
  const CustomContainerVideo1(
      {super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(screenWidth(40)),
        width: screenWidth(1.1),
        height: screenWidth(3.8),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            CustomImg1(
              name: 'score_img',
              width: screenWidth(2.7),
            ),
            Positioned(
              top: screenWidth(20),
              right: screenWidth(6.9),
              child: CustomImg1(
                name: 'youtube_img',
                width: screenWidth(9),
                height: screenWidth(9),
              ),
            ),
            Positioned(
                top: screenWidth(30),
                right: screenWidth(2.3),
                child: Container(
                  height: screenWidth(3.8),
                  width: screenWidth(2.3),
                  child: CustomText(
                    lineNum: 2,
                    text: text,
                    styleType: TextStyleType.SUBTITLE,
                    textColor: AppColors.whiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ))
          ],
        ));
  }
}
