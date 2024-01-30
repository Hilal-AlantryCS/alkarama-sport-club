import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_img.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/news_details_view/news_details_view_widgets/custom_result_match.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';


class NewsDetailsView extends StatefulWidget {
  const NewsDetailsView({super.key});

  @override
  State<NewsDetailsView> createState() => _NewsDetailsViewState();
}

class _NewsDetailsViewState extends State<NewsDetailsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar:TobContainer(text: 'صفحة الخبر',isimageball: false,),
          body: Stack(
        children: [
          Stack(children: [
            CustomImg(name: 'players', width: screenWidth(1)),
            Positioned(
                top: screenWidth(13),
                right: screenWidth(1.2),
                child: Image.asset(
                  'assets/images/pngs/share.png',
                  width: screenWidth(9),
                )),
                Positioned(
               top: screenWidth(12),
              right: screenWidth(28),
              child:Image.asset('assets/images/pngs/back.png',width: screenWidth(30),)
            ),
             Positioned(
               top: screenWidth(1.7),
              right: screenWidth(2.8),
               child: DotsIndicator(
                    dotsCount: 5,
                    // position:5 ,
                    decorator: DotsDecorator(
                      color: AppColors.blueColor, // يمكنك تغيير هنا لون الدوائر إلى اللون الذي تريده
                      activeColor: AppColors.orangeColor // اللون الذي يظهر عندما يكون النقطة نشطة
                    ),
                  ),
             )
           
          
          ]),
        Padding(
          padding:  EdgeInsetsDirectional.only(top: screenWidth(1.5)),
          child: CustomResultMatch(),
        )
        ],
      )
          ),
    );
  }
}
