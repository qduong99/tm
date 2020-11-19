import 'package:TM/src/common/widget/TMImage.dart';
import 'package:TM/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

class VideosDetailPage extends StatefulWidget {
  final int principalId;

  static const routeName = '/videosPage';

  VideosDetailPage(this.principalId);

  @override
  _VideosDetailPageState createState() => _VideosDetailPageState();
}

class _VideosDetailPageState extends State<VideosDetailPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[
          Text("Video"),
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

  void playYoutubeVideo() {
    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "<API_KEY>",
      videoUrl: "https://www.youtube.com/watch?v=RJ44oIxWiYI",
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
                        TMImage(image: "videos/1.jpg"),
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
                                child: Text('Back'),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              RaisedButton(
                                color: _btnNext ? appTheme.accentColor : Colors.grey,
                                onPressed: _btnNext
                                    ? () {
                                  playYoutubeVideo();

                                }
                                    : null,
                                child: Text('Play'),
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
