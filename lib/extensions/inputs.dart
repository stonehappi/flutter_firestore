import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'OpenSans',
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
        prefixIcon: Icon(
          Icons.email,
          color: Colors.white,
        ),
        hintText: 'Enter your Email',
        //   hintStyle: kHintTextStyle,
      ),
    );
  }
}
