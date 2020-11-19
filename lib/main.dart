import 'package:TM/src/screens/LoginScreen.dart';
import 'package:TM/src/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  static const routeName = '/';
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          home: LoginScreen(),
        );
  }
}
