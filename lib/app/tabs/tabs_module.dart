import 'package:flutter_firestore/app/tabs/tabs_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'tabs_widget.dart';

class TabsModule extends ChildModule {
  static Inject get to => Inject<TabsModule>.of();

  @override
  List<Bind> get binds => [
        Bind((i) => TabsBloc()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, args) => TabsWidget()),
      ];
}
