import 'package:flutter_modular/flutter_modular.dart';

import 'tab1_widget.dart';

class Tab1Module extends ChildModule {
  static Inject get to => Inject<Tab1Module>.of();

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, args) => Tab1Widget()),
      ];
}
