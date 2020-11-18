import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage();

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[
          const Icon(Icons.settings, color: Colors.blue),
          Text("# Under Construction"),
        ]),
      ),
      body: Stack(
        children: <Widget>[
          CustomMainPage(),
          DraggableScrollableSheet(
            initialChildSize: 0.30,
            minChildSize: 0.15,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CustomMainPage extends StatefulWidget {
  CustomMainPage();

  @override
  _CustomMainPageState createState() => _CustomMainPageState();
}

class _CustomMainPageState extends State<CustomMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: IconButton(icon: Icon(Icons.sync), onPressed: () {}, color: Colors.blue));
  }
}
