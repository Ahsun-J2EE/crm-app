import 'package:crm_app/screens/auth/secondary_registration.dart';
import 'package:crm_app/screens/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../widgets/button.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);
  static const String routeName='/registration_screen';
  final emailController= TextEditingController();

  Widget _registrationScreenUpperPart(){
    return Column(
        children:[
          const SizedBox(height: 10),
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              //color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('assets/images/signup-banner.png',),
                  fit: BoxFit.contain
              ),
            ),
          ),
        ]);
  }
  Widget _registrationScreenLowerPart(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              const Text('Registration',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Unto',
                    color: Colors.blueAccent
                ),
              ),
              const SizedBox(height: 20,),
              AppTextField(controller: emailController, hintText: 'Email', icon: const Icon(Icons.email_outlined)),
              const SizedBox(height:20,),
              Button(title: 'Sent',
                  color: Colors.blue,
                  onTap: (){
                    _goToSecondaryRegistrationPage();
                  },
                  textColor: Colors.white
              ),
              const Padding(padding: EdgeInsets.only(top: 15),
              child: Text('Click on the button to send activation\nlink to your email',
              textAlign: TextAlign.center,))
            ]
        )
      ],
    );
  }

    void _goToSecondaryRegistrationPage () async{
     EasyLoading.show(status: 'Loading...');
     await Future.delayed(const Duration(seconds: 3));
     Get.toNamed(SecondaryRegistration.routeName);
     EasyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          //color: Colors.green,
          child: Column(
            children: [
              _registrationScreenUpperPart(),
              const SizedBox(height: 40,),
              _registrationScreenLowerPart()
            ],
          ),
        ),
      ),
    );
  }
}
