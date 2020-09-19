import 'package:flutter_modular/flutter_modular.dart';

import 'tab3_widget.dart';

class Tab3Module extends ChildModule {
  static Inject get to => Inject<Tab3Module>.of();

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, args) => Tab3Widget()),
      ];
}
