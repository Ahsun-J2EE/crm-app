import 'package:crm_app/screens/auth/login_screen.dart';
import 'package:crm_app/screens/auth/registration_screen.dart';
import 'package:crm_app/screens/auth/reset_password_screen.dart';
import 'package:crm_app/screens/auth/secondary_registration.dart';
import 'package:crm_app/screens/landing_page/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CRM App',
      getPages: [
        GetPage(name: '/', page:()=> const SplashScreen()),
        GetPage(name: LoginScreen.routeName, page: ()=>LoginScreen()),
        GetPage(name:RegistrationScreen.routeName, page: ()=> RegistrationScreen()),
        GetPage(name: ResetPasswordScreen.routeName, page: ()=> ResetPasswordScreen()),
        GetPage(name: SecondaryRegistration.routeName, page: ()=> SecondaryRegistration())
      ],
      builder:EasyLoading.init(),
    );
  }
}



