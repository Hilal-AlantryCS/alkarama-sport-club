import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class CustomShield extends StatelessWidget {
  final String upTxt;
  final String downTxt;
  const CustomShield({super.key, required this.upTxt, required this.downTxt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(15),
      height: screenWidth(15),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/pngs/shield.png",
          ),
          Center(
            child: Container(
              child: Column(
                children: [
                  CustomText(
                    text: upTxt,
                    fontSize: screenWidth(60),
                    fontWeight: FontWeight.w900,
                    styleType: TextStyleType.CUSTOM,
                  ),
                  CustomText(
                    text: downTxt,
                    fontSize: screenWidth(60),
                    fontWeight: FontWeight.bold,
                    styleType: TextStyleType.CUSTOM,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
