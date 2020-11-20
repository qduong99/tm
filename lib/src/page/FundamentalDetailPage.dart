import 'dart:collection';

import 'package:TM/src/common/widget/TMImage.dart';
import 'package:TM/src/theme.dart';
import 'package:flutter/material.dart';

class FundamentalDetailPage extends StatefulWidget {
  final String fundamentalId;

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
          Text("Fundamental: ${widget.fundamentalId}"),
        ]),
      ),
      body: CustomMainPage(widget.fundamentalId),
    );
  }
}

class CustomMainPage extends StatefulWidget {
  final String fundamentalId;

  CustomMainPage(this.fundamentalId);

  @override
  _CustomMainPageState createState() => _CustomMainPageState();
}

class _CustomMainPageState extends State<CustomMainPage> {
  Map<String, List<String>> images = new HashMap();

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

    _initImagesHelper("fundamentals", "Overview", 1, 2); //overview
    _initImagesHelper("fundamentals", "Stability", 2, 9); //stability
    _initImagesHelper("fundamentals", "Adaptability", 3, 4); //adaptability
    _initImagesHelper("fundamentals", "Purification", 4, 5); //purification
    _initImagesHelper("fundamentals", "Integration", 5, 7); //integration
    _initImagesHelper("fundamentals", "Growth", 6, 4); //growth
    _initImagesHelper("fundamentals", "Summary", 7, 5); //summary
  }

  _initImagesHelper(tabName, fundamentalId, folderName, numFile){
    List<String> list = new List();
    for (int i = 1; i <= numFile; ++i){
      String fileName = "${tabName}/${folderName}/${i}.PNG";
      list.add(fileName);
    }
    images[fundamentalId] = list;
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
