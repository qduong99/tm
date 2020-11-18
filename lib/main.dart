import 'package:TM/src/notifier/AppState.dart';
import 'package:TM/src/page/FundamentalPage.dart';
import 'package:TM/src/screens/MainScreen.dart';
import 'package:TM/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  static const routeName = '/';
  _AppState createState() => _AppState();
}

//https://firebase.flutter.dev/docs/overview/
class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AppState()),
        ],
        child: MaterialApp(
          routes: {
            FundamentalPage.routeName: (context) => FundamentalPage(),
          },
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          home: MainScreen(),
        ));
  }
}
