import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/player_view/player_view_widgets/my_list_tile.dart';
import 'package:flutter/material.dart';

class PlayerView extends StatelessWidget {
  const PlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(children: [
        TobContainer(text: 'نادي الكرامة الرياضي', isimageball: true),
        Padding(
          padding:
              EdgeInsets.only(top: screenWidth(100), bottom: screenWidth(100)),
          child: Image.asset(
            'assets/images/pngs/tamer.png',
            height: screenWidth(1.3),
          ),
        ),
        Container(
          width: screenWidth(1),
          height: screenWidth(0.7),
          decoration: BoxDecoration(
              color: AppColors.blueColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: 'تامر حاج محمد',
                  styleType: TextStyleType.CUSTOM,
                  fontSize: screenWidth(10),
                  textColor: AppColors.whiteColor),
              MyListTile(
                text: ' المواليد : سورية - حمص 3 ابريل 1990',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: MyListTile(
                      text: ' الطول : 181سم ',
                    ),
                  ),
                  Expanded(
                    child: MyListTile(
                      text: ' مركز اللعب : خط وسط',
                    ),
                  ),
                ],
              ),
              MyListTile(text: ' النادي الأم : نادي الكرامة السوري'),
              MyListTile(text: ' المسيرة الأحترافية :'),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      mainAxisExtent: screenWidth(10)),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return MyListTile(
                      text: 'نادي الكرامة   ',
                      leadingICon:
                          Icon(Icons.minimize, color: AppColors.whiteColor),
                    );
                  }),
              MyListTile(
                text: 'ومثل المنتخب السوري بجميع فئاته العمرية',
                leadingICon: Icon(Icons.minimize, color: AppColors.whiteColor),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
