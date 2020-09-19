import 'package:flutter_firestore/app/auth/auth_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'auth_widget.dart';

class AuthModule extends ChildModule {
  static Inject get to => Inject<AuthModule>.of();

  @override
  List<Bind> get binds => [
        Bind((i) => AuthBloc()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, args) => AuthWidget()),
      ];
}
