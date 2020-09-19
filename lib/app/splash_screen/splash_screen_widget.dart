import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firestore/constant/colors.dart';
import 'package:flutter_firestore/constant/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    new Timer(new Duration(seconds: 1), () {
      Modular.to.pushReplacementNamed(AppRoutes.auth);
    });

    return Scaffold(
      backgroundColor: AppBGColors.primary,
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
