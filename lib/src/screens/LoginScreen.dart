import 'package:TM/src/screens/AppLogo.dart';
import 'package:TM/src/screens/MainScreen.dart';
import 'package:TM/src/theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>(debugLabel: "scaffold-verify-phone");

  Future<bool> loginUser(BuildContext context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(
          key: scaffoldKey,
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(32),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 16,
                      ),
                      AppLogo(),
                      Padding(
                        padding: const EdgeInsets.only(left:32.0, top: 16),
                        child: Text(
                          'Science and Technology of Consciousness',
                          style: TextStyle(color: Colors.green, fontSize: 36, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: Colors.grey[200])),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: Colors.grey[300])),
                          filled: true,
                          fillColor: Colors.grey[100],
                          hintText: "User ID",
                        ),
                        controller: _userNameController,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        obscureText:true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: Colors.grey[200])),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: Colors.grey[300])),
                          filled: true,
                          fillColor: Colors.grey[100],
                          hintText: "Password",
                        ),
                        controller: _passwordController,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: double.infinity,
                        child: FlatButton(
                          child: Text("Sign in",
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                          textColor: Colors.white,
                          padding: EdgeInsets.all(16),
                          onPressed: () {
                            loginUser(context);
                          },
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Image Sources and Videos from  "TM Enjoy News" website - https://enjoytmnews.org/',
                        style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
