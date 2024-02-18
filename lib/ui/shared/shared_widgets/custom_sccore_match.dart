import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class CustomSccoreMatch extends StatelessWidget {
  final String date;
  final String time;
  final String stadium;
  final String round;
  final String leftTeam;
  final String rightTeam;
  final String leftTeamImg;
  final String rightTeamImg;
  final String leftTeamGoal;
  final String rightTeamGoal;
  final String leftTeamGoalDescription;
  final String rightTeamGoalDescription;
  const CustomSccoreMatch({
    super.key,
    required this.date,
    required this.time,
    required this.stadium,
    required this.round,
    required this.leftTeam,
    required this.rightTeam,
    required this.leftTeamImg,
    required this.rightTeamImg,
    required this.leftTeamGoal,
    required this.rightTeamGoal,
    required this.leftTeamGoalDescription,
    required this.rightTeamGoalDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(screenWidth(20)),
      width: screenWidth(1),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/pngs/ic_bg.png",
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      leftTeamImg,
                      width: screenWidth(9),
                      height: screenWidth(9),
                    ),
                    CustomText(
                      text: leftTeamGoalDescription,
                      styleType: TextStyleType.SMALL,
                    ),
                    CustomText(
                      text: leftTeam,
                      styleType: TextStyleType.SMALL,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: date,
                      styleType: TextStyleType.SMALL,
                    ),
                    CustomText(
                      text: time,
                      styleType: TextStyleType.SMALL,
                    ),
                    CustomText(
                      text: stadium,
                      styleType: TextStyleType.SMALL,
                    ),
                    CustomText(
                      text: "$leftTeamGoal:$rightTeamGoal",
                      styleType: TextStyleType.SMALL,
                    ),
                    CustomText(
                      text: "الجولة",
                      styleType: TextStyleType.SMALL,
                    ),
                    CustomText(
                      text: round,
                      styleType: TextStyleType.SMALL,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      rightTeamImg,
                      width: screenWidth(9),
                      height: screenWidth(9),
                    ),
                    CustomText(
                      text: rightTeam,
                      styleType: TextStyleType.SMALL,
                    ),
                    CustomText(
                      text: rightTeamGoalDescription,
                      styleType: TextStyleType.SMALL,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
