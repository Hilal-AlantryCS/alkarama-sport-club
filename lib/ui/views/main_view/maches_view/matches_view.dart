import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_maches.dart';
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
          sizebox: SizedBox(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenWidth(13),
              ),
              CustomMaches(),
              SizedBox(
                height: screenWidth(12),
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
                  Container(
                    color: AppColors.blackColor,
                    width: screenWidth(3),
                    height: screenWidth(200),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth(25),
              ),
              SizedBox(
                width: screenWidth(1.25),
                height: screenWidth(1.5),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    CustomUpcomingMatches(),
                    Divider(
                      color: AppColors.whiteColor,
                      thickness: 1,
                    ),
                    CustomUpcomingMatches(),
                    Divider(
                      color: AppColors.whiteColor,
                      thickness: 1,
                    ),
                    CustomUpcomingMatches(),
                    Divider(
                      color: AppColors.whiteColor,
                      thickness: 1,
                    ),
                    CustomUpcomingMatches(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
