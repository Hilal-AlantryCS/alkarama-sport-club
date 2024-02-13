import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/my_app.dart';
import 'core/data/repository/shared_prefrence_repository.dart';
import 'core/services/connectivity_service.dart';

// late SharedPreferences prefs;
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // prefs = await SharedPreferences.getInstance();
  //! Get.put(SharedPrefrenceRepository());
  await Get.putAsync<SharedPreferences>(
    () async {
      return await SharedPreferences.getInstance();
    },
  );
  Get.lazyPut(
    () => SharedPrefrenceRepository(),
  );

  Get.put(ConnectivitySerivce());

  Get.put(Connectivity());

  // try {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );

  //   Get.put(NotificationService());
  // } catch (e) {
  //   print(e);
  // }

  runApp(const MyApp());
}
