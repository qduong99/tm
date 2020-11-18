import 'package:TM/src/page/home/AppHomePageMainContainer.dart';
import 'package:flutter/material.dart';

class AppHomePage extends StatefulWidget {
  AppHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: <Widget>[
              AppHomePageMainContainer(),
            ]),
    );
  }
}
