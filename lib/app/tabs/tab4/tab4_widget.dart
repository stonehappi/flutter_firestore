import 'package:flutter/material.dart';
import 'package:flutter_firestore/constant/colors.dart';
import 'package:flutter_firestore/constant/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Tab4Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBGColors.primary,
      body: Center(
        child: RaisedButton(
          child: Text('Log out'),
          onPressed: () {
            Modular.to.pushReplacementNamed(AppRoutes.auth);
          },
        ),
      ),
    );
  }
}
