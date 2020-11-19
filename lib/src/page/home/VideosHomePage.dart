import 'package:TM/src/page/home/AppHomePageMainContainer.dart';
import 'package:TM/src/page/home/tabs/PrincipalsMenuTab.dart';
import 'package:TM/src/page/home/tabs/TMQuestionsTab.dart';
import 'package:TM/src/page/home/tabs/VideosTab.dart';
import 'package:flutter/material.dart';

class VideosHomePage extends StatefulWidget {
  VideosHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _VideosHomePageState createState() => _VideosHomePageState();
}

class _VideosHomePageState extends State<VideosHomePage> {
  final tabs = [
    "TM1 Videos",
    "TM2 Videos",
    "TM3 Videos",
    "TM4 Videos",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: <Widget>[
        DefaultTabController(
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
              VideosTab(),
              VideosTab(),
              VideosTab(),
              VideosTab(),
            ]),
          ),
        )
      ]),
    );
  }
}
