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
    return Stack(
      children: [
        Image.asset(
          'assets/images/pngs/shield.png',
          width: screenWidth(14),
        ),
        Container(
            width: screenWidth(14),
            child: Column(
              children: [
                CustomText(
                  text: upTxt,
                  fontSize: 8,
                  fontWeight: FontWeight.w900,
                  styleType: TextStyleType.CUSTOM,
                ),
                CustomText(
                  text: downTxt,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  styleType: TextStyleType.CUSTOM,
                ),
              ],
            ))
      ],
    );
  }
}
