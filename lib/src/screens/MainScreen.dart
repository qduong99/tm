import 'package:flutter/material.dart';

import '../bar/AppBottomButtonNavBar.dart';
import '../bar/AppTopBar.dart';
import '../page/home/AppHomePage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppTopBar(
            height: 55,
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              AppHomePage(),
              AppHomePage(),
              AppHomePage(),
              AppHomePage(),
            ],
          ),
          bottomNavigationBar: AppBottomButtonNavBar()),
    );
  }
}
