import 'package:TM/src/common/widget/TMImage.dart';
import 'package:TM/src/theme.dart';
import 'package:flutter/material.dart';

class PrincipalDetailPage extends StatefulWidget {
  final int principalId;

  PrincipalDetailPage(this.principalId);

  @override
  _PrincipalDetailPageState createState() => _PrincipalDetailPageState();
}

class _PrincipalDetailPageState extends State<PrincipalDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[
          Text("Principal Detail"),
        ]),
      ),
      body: CustomMainPage(),
    );
  }
}

class CustomMainPage extends StatefulWidget {
  CustomMainPage();

  @override
  _CustomMainPageState createState() => _CustomMainPageState();
}

class _CustomMainPageState extends State<CustomMainPage> {
  final _formKey = GlobalKey<FormState>();

  bool _btnNext = true;
  bool _btnCancel = true;

  _disableButton() {
    _setButton(false);
  }

  _enableButton() {
    _setButton(true);
  }

  _setButton(bool enable) {
    setState(() {
      _btnCancel = enable;
      _btnNext = enable;
    });
  }

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
                        // UnloadBy(),
                        SizedBox(height: 8),
                        TMImage(image: "principals/1.png"),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 8,
                              ),
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
    _disableButton();
    try {
    } catch (ex) {
    } finally{
      _enableButton();
    }
  }
}

