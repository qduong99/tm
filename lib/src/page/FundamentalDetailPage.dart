import 'dart:collection';

import 'package:TM/src/common/widget/TMImage.dart';
import 'package:TM/src/theme.dart';
import 'package:flutter/material.dart';

class FundamentalDetailPage extends StatefulWidget {
  final int fundamentalId;

  FundamentalDetailPage(this.fundamentalId);

  @override
  _FundamentalDetailPageState createState() => _FundamentalDetailPageState();
}

class _FundamentalDetailPageState extends State<FundamentalDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[
          Text("Fundamental Detail ${widget.fundamentalId}"),
        ]),
      ),
      body: CustomMainPage(widget.fundamentalId),
    );
  }
}

class CustomMainPage extends StatefulWidget {
  final int fundamentalId;

  CustomMainPage(this.fundamentalId);

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
    images[1] = ["fundamentals/1/1.png", "fundamentals/1/2.png", "fundamentals/1/3.png"];
    images[2] = ["fundamentals/2/1.png", "fundamentals/2/2.png", "fundamentals/2/3.png", "fundamentals/2/4.png"];
    images[3] = ["fundamentals/3/1.png", "fundamentals/3/2.png", "fundamentals/3/3.png"];
    images[4] = ["fundamentals/4/1.png"];
    images[5] = ["fundamentals/5/1.png", "fundamentals/5/2.png"];
  }

  _build() {
    List<Widget> result = [];
    List<String> principalImages = images[widget.fundamentalId];
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
