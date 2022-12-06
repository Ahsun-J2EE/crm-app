import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../auth/secondary_registration.dart';

class RegistrationController extends GetxController{
  void goToSecondaryRegistrationPage () async{
    EasyLoading.show(status: 'Loading...');
    await Future.delayed(const Duration(seconds: 3));
    Fluttertoast.showToast(msg: 'Email activated!',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
    Get.toNamed(SecondaryRegistration.routeName);
    EasyLoading.dismiss();
  }
}