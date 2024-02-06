import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class ClupPresident extends StatelessWidget {
  const ClupPresident({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/pngs/president_clup_img.png',
          width: screenWidth(1.5),
          height: screenWidth(1.5),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(top: screenWidth(2.4)),
          child: Image.asset(
            'assets/images/pngs/president_clup.png',
            width: screenWidth(1.5),
            height: screenWidth(1.5),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
              top: screenWidth(2.38), start: screenWidth(4.3)),
          child: Column(
            children: [
              CustomText(
                text: 'نصوح البارودي',
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.w500,
                styleType: TextStyleType.BODY,
              ),
              CustomText(
                text: '2006',
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.w500,
                styleType: TextStyleType.BODY,
              )
            ],
          ),
        )
      ],
    );
  }
}
