import 'package:flutter/material.dart';
class AppTextField extends StatefulWidget {
  final GlobalKey<FormState> _formkey= GlobalKey<FormState>();
  final TextEditingController controller;
  String? hintText;
  Icon icon;

  AppTextField({super.key,
    required this.controller,
    required this.hintText,
    required this.icon
});

  @override
  State<AppTextField> createState()=> _AppTextFieldState();
}

class _AppTextFieldState extends State <AppTextField>  {
  bool hidePassword= true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      key: widget._formkey,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: widget.icon,
        hintText: widget.hintText,
      ),
    );
  }
}
