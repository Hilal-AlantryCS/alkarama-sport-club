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
      width: screenWidth(10),
      height: screenWidth(10),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/pngs/shield.png",
              ))),
      child: Stack(
        children: [
          Center(
              child: Container(
                  height: screenWidth(9),
                  width: screenWidth(12),
                  child: Column(
                    children: [
                      CustomText(
                        text: upTxt,
                        fontSize: screenWidth(40),
                        fontWeight: FontWeight.w900,
                        styleType: TextStyleType.CUSTOM,
                      ),
                      CustomText(
                        text: downTxt,
                        fontSize: screenWidth(40),
                        fontWeight: FontWeight.bold,
                        styleType: TextStyleType.CUSTOM,
                      ),
                    ],
                  )))
        ],
      ),
    );

    //   Stack(
    //   children: [
    //     Image.asset(
    //       'assets/images/pngs/shield.png',
    //       width: screenWidth(11),
    //     ),
    //     Container(
    //         width: screenWidth(12),
    //         child: Column(
    //           children: [
    //             CustomText(
    //               text: upTxt,
    //               fontSize: screenWidth(40),
    //               fontWeight: FontWeight.w900,
    //               styleType: TextStyleType.CUSTOM,
    //             ),
    //             CustomText(
    //               text: downTxt,
    //               fontSize: screenWidth(40),
    //               fontWeight: FontWeight.bold,
    //               styleType: TextStyleType.CUSTOM,
    //             ),
    //           ],
    //         ))
    //   ],
    // );
  }
}
