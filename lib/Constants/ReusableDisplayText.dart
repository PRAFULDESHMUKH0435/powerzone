import 'package:flutter/material.dart';
import 'package:powerzone/AppStyles/AppStyle.dart';

class ReusableDisplayText extends StatelessWidget {
  String displayText;
  ReusableDisplayText({required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
      child: Text("${displayText}",style:
        TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppStyle.ReusableDisplayTextcolor
        ),),
    );
  }
}
