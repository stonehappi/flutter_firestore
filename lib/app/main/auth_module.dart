import 'package:flutter_modular/flutter_modular.dart';

import 'auth_widget.dart';

class AuthModule extends ChildModule {
  static Inject get to => Inject<AuthModule>.of();

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, args) => AuthWidget()),
      ];
}
