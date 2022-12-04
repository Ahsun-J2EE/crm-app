import 'package:crm_app/core/color_constant.dart';
import 'package:crm_app/screens/login/login_screen.dart';
import 'package:crm_app/screens/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
   const SplashScreen({Key? key}) : super(key: key);
  static const String routeName='/splash_screen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
         height: double.infinity,
         decoration: const BoxDecoration(
           image: DecorationImage(
               image: AssetImage('assets/images/crm_background.jpg'),
             fit: BoxFit.cover
           )
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.start,
           children:[
             Padding(
               padding: const EdgeInsets.only(top: 30),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const [
                   Text('Hello !',
                     style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                     ),
                   ),
                   Text('Welcome To Your App',
                     style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                     ),
                   ),
                 ],
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                 height: 150,
                 width: 120,
                 alignment: Alignment.center,
                 //color: Colors.blue,
                 child: Image.asset('assets/images/crm-logo.png'),
               ),
            ]
             ),
             Column(
               children: [
                 Button(
                   title: 'Login',
                   color: getButtonColorRed(),
                   textColor: Colors.white,
                   onTap: (){
                     Get.toNamed(LoginScreen.routeName);
                     },
                 ),
                 const SizedBox(height: 8,),
                 Button(title: 'Registration', color: getButtonColorGreen(), textColor: Colors.white, onTap: (){},)
               ],
             )
           ],
         ),
      ),
    );
  }
}
