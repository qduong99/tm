import 'package:TM/src/page/home/AppHomePageMainContainer.dart';
import 'package:TM/src/page/home/tabs/PrincipalsMenuTab.dart';
import 'package:TM/src/page/home/tabs/TMQuestionsTab.dart';
import 'package:TM/src/page/home/tabs/VideosTab.dart';
import 'package:TM/src/page/home/videoTabs/Section1.dart';
import 'package:TM/src/page/home/videoTabs/Section2.dart';
import 'package:TM/src/page/home/videoTabs/Section3.dart';
import 'package:TM/src/page/home/videoTabs/Section4.dart';
import 'package:flutter/material.dart';

class VideosHomePage extends StatefulWidget {
  VideosHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _VideosHomePageState createState() => _VideosHomePageState();
}

class _VideosHomePageState extends State<VideosHomePage> {
  final tabs = [
    "Asanas",
    "Sun Salutation",
    "Lectures",
    "Other Videos",
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
              Section1(),
              Section2(),
              Section3(),
              Section4(),
            ]),
          ),
        )
      ]),
    );
  }
}
