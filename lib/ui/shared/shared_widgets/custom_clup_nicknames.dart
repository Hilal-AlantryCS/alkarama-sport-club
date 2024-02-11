import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class ClupNicknames extends StatelessWidget {
  const ClupNicknames({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/pngs/container1_nicknames.png',
              width: screenWidth(2.8),
            ),
            Image.asset(
              'assets/images/pngs/cntainer2_nicknames.png',
              width: screenWidth(2.2),
            )
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
              top: screenWidth(35), start: screenWidth(20)),
          child: Image.asset(
            'assets/images/pngs/champions_img.png',
            width: screenWidth(3),
          ),
        ),
        Positioned(
          bottom: screenWidth(6.5),
          left: screenWidth(15),
          child: Column(
            children: [
              CustomText(
                text: 'أبطال الدوري السوري',
                styleType: TextStyleType.BODY,
                fontWeight: FontWeight.w500,
              ),
              CustomText(
                text: '2008-2007',
                styleType: TextStyleType.BODY,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        )
      ],
    );
  }
}
