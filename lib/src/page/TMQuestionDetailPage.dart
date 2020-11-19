import 'dart:collection';

import 'package:TM/src/common/widget/TMImage.dart';
import 'package:TM/src/theme.dart';
import 'package:flutter/material.dart';

class TMQuestionDetailPage extends StatefulWidget {
  final int id;

  TMQuestionDetailPage(this.id);

  @override
  _TMQuestionDetailPageState createState() => _TMQuestionDetailPageState();
}

class _TMQuestionDetailPageState extends State<TMQuestionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[
          Text("TM Common Questions"),
        ]),
      ),
      body: CustomMainPage(widget.id),
    );
  }
}

class CustomMainPage extends StatefulWidget {
  final int id;

  CustomMainPage(this.id);

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
    images[1] = ["tm/1.png"];
    images[2] = ["tm/2.png","tm/2-1.png"];
    images[3] = ["tm/3.png"];
    images[4] = ["tm/4.png"];
    images[5] = ["tm/5.png"];
    images[6] = ["tm/6.png","tm/6-1.png"];
    images[7] = ["tm/7.png"];
    images[8] = ["tm/8.png"];
    images[9] = ["tm/9.png"];
    images[10] = ["tm/10.png"];
  }

  _build() {
    List<Widget> result = [];
    List<String> principalImages = images[widget.id];
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
