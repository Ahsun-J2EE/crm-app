import 'package:crm_app/screens/login/login_screen.dart';
import 'package:crm_app/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        GetPage(name: LoginScreen.routeName, page: ()=>LoginScreen())
      ],
    );
  }
}



