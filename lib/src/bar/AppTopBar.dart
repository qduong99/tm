import 'package:flutter/material.dart';

class AppTopBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;

  const AppTopBar({Key key, this.height}) : super(key: key);

  @override
  _AppTopBarState createState() => _AppTopBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _AppTopBarState extends State<AppTopBar> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: AppBar(
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.home_work),
                onPressed: () {
                  //Scaffold.of(context).openDrawer();
                },
                //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            }),
            title: const Text('Transcendental Meditation Course')));
  }
}
