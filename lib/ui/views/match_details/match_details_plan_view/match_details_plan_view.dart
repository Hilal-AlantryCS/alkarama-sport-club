import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_img.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_result_match.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_row_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';


class MatchDetailsPlanView extends StatefulWidget {
  const MatchDetailsPlanView({super.key});

  @override
  State<MatchDetailsPlanView> createState() => _MatchDetailsPlanViewState();
}

class _MatchDetailsPlanViewState extends State<MatchDetailsPlanView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: TobContainer(text: 'تفاصيل المباراة',sizebox: SizedBox(),),
       body: ListView(
         children: [
           Padding(
             padding:  EdgeInsetsDirectional.only(top:screenWidth(10),start: screenWidth(20),end: screenWidth(20)),
             child: CustomMatch(),
           ),
           Padding(
             padding: EdgeInsetsDirectional.only(top:screenWidth(20),start: screenWidth(20),end: screenWidth(20)),
             child: CustomRowText(isSelestedone: false, isSelestedtwo: false, isSelestedthree: true),
           ),
           SizedBox(height: 20,),
           CustomImg(name:'plan')
         ],
       ),
    ));
  }
}