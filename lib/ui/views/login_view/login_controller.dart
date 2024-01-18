import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_P2/core/data/repository/auth_repository.dart';
import 'package:task_P2/ui/shared/utlis.dart';
import 'package:task_P2/ui/views/main_view/main_view.dart';
import '../signup_view/signup_view.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String username = 'Malek@gmail.com';
  String password = 'P@ssw0rd';

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxBool isLoading = false.obs;
  RxBool isChecked = false.obs;

  @override
  void onInit() {
    if (storage.getLoginInfo().isNotEmpty) {
      isChecked.value = true;
      usernameController.text = storage.getLoginInfo()[0];
      passwordController.text = storage.getLoginInfo()[1];
    } else {
      usernameController.text = 'mor_2314';
      passwordController.text = '83r5^_';
    }
    super.onInit();
  }

  void signUp() {
    Get.to(SignupView());
  }

  void checkUser() {}
}
