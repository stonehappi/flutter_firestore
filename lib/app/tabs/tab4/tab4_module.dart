import 'package:flutter_modular/flutter_modular.dart';

import 'tab4_widget.dart';

class Tab4Module extends ChildModule {
  static Inject get to => Inject<Tab4Module>.of();

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, args) => Tab4Widget()),
      ];
}
