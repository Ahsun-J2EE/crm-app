import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   final String title;
   final Color color;
   final Function onTap;
   final Color textColor;

   const Button({
     Key? key,
     required this.title,
     required this.color,
     required this.onTap,
     required this.textColor
    }): super(key:key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Text(title,
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: textColor
          ),
        ) ,
      ),
    );
  }
}
