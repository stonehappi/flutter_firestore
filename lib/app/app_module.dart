import 'package:flutter/material.dart';
import 'package:flutter_firestore/app/auth/auth_module.dart';
import 'package:flutter_firestore/app/splash_screen/splash_screen_module.dart';
import 'package:flutter_firestore/app/tabs/tabs_module.dart';
import 'package:flutter_firestore/constant/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';

class AppModule extends MainModule {
  static Inject get to => Inject<AppModule>.of();

  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashScreenModule()),
        ModularRouter(
          AppRoutes.auth,
          module: AuthModule(),
          transition: TransitionType.fadeIn,
        ),
        ModularRouter(
          AppRoutes.tabs,
          module: TabsModule(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
