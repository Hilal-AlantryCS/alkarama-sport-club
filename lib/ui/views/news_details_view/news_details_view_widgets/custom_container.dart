import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';


class CustomContainer extends StatelessWidget {
  final Radius? topStart;
  final Radius? bottomStart;
  final Radius? topEnd;
  final Radius? bottomEnd;
  const CustomContainer({super.key, this.topStart, this.bottomStart, this.topEnd, this.bottomEnd});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(4.5),
      height: screenWidth(60),
      decoration: BoxDecoration(
        color: AppColors.blueColor,
          borderRadius: BorderRadiusDirectional.only(
              topStart:topStart??Radius.circular(0),
              bottomStart:bottomStart??Radius.circular(0),
              topEnd:topEnd?? Radius.circular(0),
              bottomEnd:bottomEnd?? Radius.circular(0))),
      
    );
  }
}