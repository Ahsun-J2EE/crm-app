import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widgets/app_text_field.dart';
import '../widgets/button.dart';

class SecondaryRegistration extends StatelessWidget {
  SecondaryRegistration({Key? key}) : super(key: key);
  static const String routeName='/secondary_registration';
  final nameController=TextEditingController();
  final passwordController=TextEditingController();
  final retypePasswordController=TextEditingController();

  Widget _secondaryRegistrationScreenUpperPart(){
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
  Widget _secondaryRegistrationScreenLowerPart(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              const Text('Create Password',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Unto',
                    color: Colors.blueAccent
                ),
              ),
              const SizedBox(height: 20,),
              AppTextField(controller: nameController, hintText: 'Full Name', icon: const Icon(Icons.person)),
              AppTextField(controller: passwordController, hintText: 'Password', icon: const Icon(Icons.lock_outline)),
              AppTextField(controller: retypePasswordController, hintText: 'Retype Password', icon: const Icon(Icons.lock_outline)),
              const SizedBox(height:25,),
              Button(title: 'Save Details',
                  color: Colors.blue,
                  onTap: (){
                    Fluttertoast.showToast(msg: 'Saved Successfully!',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },
                  textColor: Colors.white
              ),
              const Padding(padding: EdgeInsets.only(top: 15),
                  child: Text('Click on the button to save your details',
                    textAlign: TextAlign.center,))
            ]
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
              _secondaryRegistrationScreenUpperPart(),
              const SizedBox(height: 20,),
              _secondaryRegistrationScreenLowerPart()
            ],
          ),
        ),
      ),
    );
  }
}
