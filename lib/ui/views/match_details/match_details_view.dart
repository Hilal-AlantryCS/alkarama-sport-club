import 'package:alkarama_sport_club/ui/views/match_details/match_details-cahnge_view/match_details-cahnge_view.dart';
import 'package:alkarama_sport_club/ui/views/match_details/match_details_controller.dart';
import 'package:alkarama_sport_club/ui/views/match_details/match_details_plan_view/match_details_plan_view.dart';
import 'package:alkarama_sport_club/ui/views/match_details/match_details_team_extra_view/match_details_team_extra_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MatchDetails extends StatefulWidget {
  const MatchDetails({super.key});

  @override
  State<MatchDetails> createState() => MatchDetailsState();
}

class MatchDetailsState extends State<MatchDetails> {
  MatchDetailsController controller = Get.put(MatchDetailsController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [
          MatchDetailsPlanView(),
          MatchDetailsChangeView(),
          MatchDtailsTeamView()
        ],
      ),
    ));
  }
}
