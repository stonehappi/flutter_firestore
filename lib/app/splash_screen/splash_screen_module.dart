import 'package:flutter_modular/flutter_modular.dart';

import 'splash_screen_widget.dart';

class SplashScreenModule extends ChildModule {
  static Inject get to => Inject<SplashScreenModule>.of();

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, args) => SplashScreenWidget()),
      ];
}
