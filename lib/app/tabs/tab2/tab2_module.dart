import 'package:flutter_modular/flutter_modular.dart';

import 'tab2_widget.dart';

class Tab2Module extends ChildModule {
  static Inject get to => Inject<Tab2Module>.of();

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, args) => Tab2Widget()),
      ];
}
