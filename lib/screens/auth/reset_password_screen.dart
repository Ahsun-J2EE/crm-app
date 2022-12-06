import 'package:flutter/material.dart';

import '../widgets/app_text_field.dart';
import '../widgets/button.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);
  static const String routeName='/reset_password_screen';

  final emailController=TextEditingController();

  Widget _registrationScreenUpperPart(){
    return Column(
        children:[
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.topCenter,
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              //color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('assets/images/forgot_password_banner.png',),
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
              const Text('Forgot Password?',
                style: TextStyle(
                    fontSize: 30,
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

                  },
                  textColor: Colors.white
              ),
              const Padding(padding: EdgeInsets.only(top: 15),
                  child: Text('Click on the button to send the reset\npassword code to your email',
                    textAlign: TextAlign.center,))
            ]
        )
      ],
    );
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
              child: Column(
                children: [
                  _registrationScreenUpperPart(),
                  const SizedBox(height: 50,),
                  _registrationScreenLowerPart()
                ],
              ),
        ),
      ),
    );
  }
}
