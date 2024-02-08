import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_upcoming_matches.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class MatchesView extends StatefulWidget {
  const MatchesView({super.key});

  @override
  State<MatchesView> createState() => _MatchesViewState();
}

class _MatchesViewState extends State<MatchesView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TobContainer(
          text: 'المباريات',
        ),
        body: ListView(
          padding: EdgeInsetsDirectional.only(
              end: screenWidth(20), start: screenWidth(20)),
          children: [
            SizedBox(
              height: screenWidth(13),
            ),
            CustomUpcomingMatches(isLive: true),
            Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth(3.5)),
              child: InkWell(
                onTap: () {},
                child: Container(
                    margin: EdgeInsets.only(bottom: screenWidth(30)),
                    height: screenWidth(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: AppColors.blueColor,
                    ),
                    alignment: Alignment.center,
                    child: CustomText(
                      text: "تفاصيل المبارة",
                      textColor: AppColors.orangeColor,
                      styleType: TextStyleType.DATE,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: AppColors.blackColor,
                    width: screenWidth(3),
                    height: screenWidth(200),
                  ),
                ),
                CustomText(
                  text: 'المباريات القادمة',
                  styleType: TextStyleType.CUSTOM,
                  textColor: AppColors.blackColor,
                  fontSize: screenWidth(20),
                ),
                Expanded(
                  child: Container(
                    color: AppColors.blackColor,
                    width: screenWidth(3),
                    height: screenWidth(200),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenWidth(25),
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                CustomUpcomingMatches(),
                CustomUpcomingMatches(),
                CustomUpcomingMatches(),
                CustomUpcomingMatches(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
