import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_result_match.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_row_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_staff_details.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class MatchDtailsTeamView extends StatefulWidget {
  const MatchDtailsTeamView({super.key});

  @override
  State<MatchDtailsTeamView> createState() => _MatchDtailsTeamViewState();
}

class _MatchDtailsTeamViewState extends State<MatchDtailsTeamView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: TobContainer(
        text: 'تفاصيل المباراة',
        sizebox: SizedBox(),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(
            top: screenWidth(10), start: screenWidth(20), end: screenWidth(20)),
        child: ListView(
          children: [
            CustomMatch(),
            SizedBox(
              height: 20,
            ),
            CustomRowText(
                isSelestedone: true,
                isSelestedtwo: false,
                isSelestedthree: false),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth(10), bottom: screenWidth(40)),
              height: screenWidth(1.6),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StaffDetails(
                    backgroundColor: AppColors.blueColor,
                    isPlayer: true,
                    isGk: false,
                    imageUrl: ' imageUrl',
                    name: 'خالد المشرف',
                    role: 'المعد البدني',
                    playerNum: '19',
                    playerRole: 'GK',
                    playerTall: '188',
                    years: '20',
                  );
                },
              ),
            ),
            Container(
              height: screenWidth(1.6),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StaffDetails(
                    backgroundColor: AppColors.blueColor,
                    isPlayer: true,
                    isGk: false,
                    imageUrl: ' imageUrl',
                    name: 'خالد المشرف',
                    role: 'المعد البدني',
                    playerNum: '19',
                    playerRole: 'GK',
                    playerTall: '188',
                    years: '20',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
