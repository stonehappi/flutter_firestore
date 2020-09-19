import 'package:flutter/material.dart';
import 'package:flutter_firestore/app/tabs/tab1/tab1_module.dart';
import 'package:flutter_firestore/app/tabs/tab2/tab2_module.dart';
import 'package:flutter_firestore/app/tabs/tab3/tab3_module.dart';
import 'package:flutter_firestore/app/tabs/tabs_bloc.dart';
import 'package:flutter_firestore/app/tabs/tabs_module.dart';
import 'package:flutter_firestore/constant/colors.dart';
import 'package:flutter_firestore/constant/icons.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'tab4/tab4_module.dart';

class TabsWidget extends StatefulWidget {
  @override
  _TabsWidgetState createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  TabsBloc tabsBloc = TabsModule.to.get<TabsBloc>();
  var currentIndex = 0;

  @override
  void initState() {
    tabsBloc.controller.listen((value) {
      setState(() {
        currentIndex = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBGColors.primary,
      body: RouterOutletList(
        modules: [
          Tab1Module(),
          Tab2Module(),
          Tab3Module(),
          Tab4Module(),
        ],
        controller: tabsBloc.controller,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: tabsBloc.controller.changeModule,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: AppIcons.tab1, title: Text('home')),
          BottomNavigationBarItem(icon: AppIcons.tab2, title: Text('Cart')),
          BottomNavigationBarItem(icon: AppIcons.tab3, title: Text('Stock')),
          BottomNavigationBarItem(icon: AppIcons.tab4, title: Text('Menu')),
        ],
      ),
    );
  }
}
