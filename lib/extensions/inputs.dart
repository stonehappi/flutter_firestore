import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firestore/constant/box_decorations.dart';
import 'package:flutter_firestore/constant/colors.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType keyboardType;
  final TextEditingController controller;

  AppTextField({@required this.label, this.icon,this.keyboardType, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: AppBGColors.primary,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      height: 60.0,
      padding: EdgeInsets.only(right: 12, left: icon != null ? 0 : 12),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: icon != null ? Icon(
            icon,
            color: Colors.white,
          ) : null,
          hintText: label,
          //   hintStyle: kHintTextStyle,
        ),
      ),
    );
  }
}
