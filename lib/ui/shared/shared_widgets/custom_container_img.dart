import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class CustomContainerImg extends StatelessWidget {
  const CustomContainerImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: screenWidth(1.34),
        height: screenWidth(2),
        decoration: BoxDecoration(
            color: AppColors.blueColor,
            borderRadius: BorderRadius.circular(22)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/pngs/alkarama.png',
            ),
            Padding(
              padding:EdgeInsetsDirectional.only(top: screenWidth(40),start: screenWidth(40)),
              child: CustomText(
                text: 'متى تأسس نادي الكرامة ',
                styleType:TextStyleType.SUBTITLE,
                textColor: AppColors.whiteColor,
                fontWeight:FontWeight.w400
              ),
            )
          ],
        ));
  }
}
