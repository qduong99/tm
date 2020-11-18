import 'package:flutter/material.dart';

class AppBottomButtonNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(icon: Icon(Icons.home), text: 'Home'),
        Tab(icon: Icon(Icons.video_collection), text: 'Videos'),
        Tab(icon: Icon(Icons.more), text: 'Resources'),
        Tab(icon: Icon(Icons.account_circle), text: 'Account'),
      ],
      unselectedLabelColor: Colors.blue,
      labelColor: Colors.amber[800],
    );
  }
}
