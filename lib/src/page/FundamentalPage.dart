import 'package:TM/src/theme.dart';
import 'package:flutter/material.dart';

class FundamentalPage extends StatefulWidget {
  static const routeName = '/fundamentalPage';

  FundamentalPage();

  @override
  _FundamentalPageState createState() => _FundamentalPageState();
}

class _FundamentalPageState extends State<FundamentalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[
          Text("Fundamental"),
        ]),
      ),
      body: FundamentalMainPage(),
    );
  }
}

class FundamentalMainPage extends StatefulWidget {
  FundamentalMainPage();

  @override
  _FundamentalMainPageState createState() => _FundamentalMainPageState();
}

class _FundamentalMainPageState extends State<FundamentalMainPage> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  bool _btnNext = true;
  bool _btnCancel = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Scrollbar(
                child: Column(
                  children: [
                    Card(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(16),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 400),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RaisedButton(
                                      color: _btnCancel ? appTheme.accentColor : Colors.grey,
                                      onPressed: _btnCancel
                                          ? () {
                                              Navigator.of(context).pop(true);
                                            }
                                          : null,
                                      child: Text('Cancel'),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    RaisedButton(
                                      color: _btnNext ? appTheme.accentColor : Colors.grey,
                                      onPressed: _btnNext
                                          ? () {
                                              _onNext();
                                            }
                                          : null,
                                      child: Text('Next'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }


  Future<void> _onNext() async {
  }

}

