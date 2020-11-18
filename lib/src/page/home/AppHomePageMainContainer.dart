import 'package:TM/src/page/home/tabs/PrincipalsMenuTab.dart';
import 'package:TM/src/page/home/tabs/TMQuestionsTab.dart';
import 'package:flutter/material.dart';

class AppHomePageMainContainer extends StatefulWidget {
  @override
  _AppHomePageMainContainerState createState() => _AppHomePageMainContainerState();
}

class _AppHomePageMainContainerState extends State<AppHomePageMainContainer> {

  @override
  Widget build(BuildContext context) {
    final tabs = [
      "Principals",
      "TM Question",
      "Videos",
      "Other Resources",
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              for (final tab in tabs) Tab(text: tab),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          PrincipalsMenuTab(),
          TMQuestionsTab(),
          TMQuestionsTab(),
          TMQuestionsTab(),
        ]),
      ),
    );
  }
}
