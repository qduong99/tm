import 'dart:collection';

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
          Text("Principal Detail ${widget.principalId}"),
        ]),
      ),
      body: CustomMainPage(widget.principalId),
    );
  }
}

class CustomMainPage extends StatefulWidget {
  final int principalId;

  CustomMainPage(this.principalId);

  @override
  _CustomMainPageState createState() => _CustomMainPageState();
}

class _CustomMainPageState extends State<CustomMainPage> {
  Map<int, List<String>> images = new HashMap();

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
  initState() {
    super.initState();
    images[1] = ["principals/1/1.png", "principals/1/2.png", "principals/1/3.png"];
    images[2] = ["principals/2/1.png", "principals/2/2.png", "principals/2/3.png", "principals/2/4.png"];
    images[3] = ["principals/3/1.png", "principals/3/2.png", "principals/3/3.png"];
    images[4] = ["principals/4/1.png"];
    images[5] = ["principals/5/1.png", "principals/5/2.png"];
    images[6] = ["principals/6/1.png", "principals/6/2.png"];
    images[7] = ["principals/7/1.png", "principals/7/2.png"];
    images[8] = ["principals/8/1.png", "principals/8/2.png"];
    images[9] = ["principals/9/1.png", "principals/9/2.png", "principals/9/3.png"];
    images[10] = ["principals/10/1.png", "principals/10/2.png"];
    images[11] = ["principals/11/1.png", "principals/11/2.png"];
    images[12] = ["principals/12/1.png", "principals/12/2.png", "principals/12/3.png"];
    images[13] = ["principals/13/1.png", "principals/13/2.png", "principals/13/3.png", "principals/13/4.png"];
    images[14] = ["principals/14/1.png", "principals/14/2.png"];
    images[15] = ["principals/15/1.png"];
    images[16] = ["principals/16/1.png", "principals/16/2.png"];
  }

  _build() {
    List<Widget> result = [];
    List<String> principalImages = images[widget.principalId];
    for (String imagePath in principalImages) {
      result.add(new TMImage(image: imagePath));
      result.add(SizedBox(height: 8));
    }
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: result,
    );
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
                        _build(),
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
    try {} catch (ex) {} finally {
      _enableButton();
    }
  }
}
