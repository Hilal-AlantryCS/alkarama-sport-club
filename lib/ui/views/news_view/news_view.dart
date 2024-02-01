import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_latest_news.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/news_details_view/news_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: TobContainer(text: 'الأخبار',sizebox: SizedBox(),),
      body: Column(
        children: [
         
          SizedBox(height: screenWidth(20),),
          Expanded(
            child: ListView.builder(
                shrinkWrap:
                    true, //طول الليست فيو بيلدر بينتهى مع نهاية اخر ويدجيت
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap:(){
                    Get.to(NewsDetailsView());
                    },
                    child: CustomLatestNews(marginend:screenWidth(20),marginstart:screenWidth(20),marginbottom:screenWidth(50)));
                }),
          )
        ],
      ),
    ));
  }
}
