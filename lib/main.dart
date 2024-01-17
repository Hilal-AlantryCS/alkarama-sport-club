import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_P2/core/data/repository/auth_repository.dart';
import 'package:task_P2/core/data/repository/products-repository.dart';
import 'package:task_P2/core/services/location_service.dart';
import 'package:task_P2/firebase_options.dart';
import 'app/my_app.dart';
import 'core/data/repository/shared_prefrence_repository.dart';
import 'core/services/connectivity_service.dart';
import 'core/services/notification_service.dart';

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
  Get.put(LocationService());
  Get.put(Connectivity());
  Get.lazyPut(
    () => ProductRepository(),
  );
  Get.lazyPut(
    () => AuthRepository(),
  );

   try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    Get.put(NotificationService());
  } catch (e) {
    print(e);
  }

  runApp(const MyApp());
}
