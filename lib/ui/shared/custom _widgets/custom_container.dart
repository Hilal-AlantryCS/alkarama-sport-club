import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                    end: screenWidth(50), top: screenWidth(40)),
                child: Container(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/pngs/jjj.png',
                      ),
                      CustomText(text: 'الرؤية',)
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.blueColor,
                      borderRadius: BorderRadius.circular(10)),
                  width: screenWidth(2.5),
                  height: screenWidth(4),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
