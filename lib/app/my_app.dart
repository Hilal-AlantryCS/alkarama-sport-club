import 'package:alkarama_sport_club/core/enums/connectivity_status.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_container.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/about%20clup/about%20clup_view.dart';
import 'package:alkarama_sport_club/ui/views/splash_view/spalsh_view.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../core/translation/app_translation.dart';
import '../ui/views/splash_view/spalsh_view.dart';
import 'my_app_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    MyAppController controller = Get.put(MyAppController());
    return StreamProvider<ConnectivityStatus>(
        create: (context) =>
            connectivitySerivce.connectivityStatusController.stream,
        initialData: ConnectivityStatus.OFFLINE,
        child: GetMaterialApp(
            locale: getLocal(),
            translations: AppTranslation(),
            builder: BotToastInit(), //1. call BotToastInit
            navigatorObservers: [BotToastNavigatorObserver()],
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: 'Cairo',
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Color.fromRGBO(1, 171, 237, 100)),
            ),
            home: Column(
              children: [
                TobContainer(
                  isimageball: true,
                  text: 'النادي',
                  iconArrowForward: Icons.arrow_forward_ios_outlined,
                ),
              ],
            )));
  }
}
