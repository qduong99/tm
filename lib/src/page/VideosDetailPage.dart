import 'dart:collection';

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
      body: CustomMainPage(widget.principalId),
    );
  }
}

class CustomMainPage extends StatefulWidget {

  final int videosId;
  CustomMainPage(this.videosId);

  @override
  _CustomMainPageState createState() => _CustomMainPageState();
}

class _CustomMainPageState extends State<CustomMainPage> {



  Map<int, List<String>> images = new HashMap();

  Map<int, List<String>> videos = new HashMap();

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
    images[1] = ["video/1/1.jpg"]; // Asana
    images[2] = ["video/1/2.jpg"]; // Asana
    images[3] = ["video/2/1.jpg"]; // Sun Salutation
    images[4] = ["video/3/1.png"]; // TM Talks
    images[5] = ["video/4/1.png"]; // Research
    images[6] = ["video/4/2.png"]; // Research
    videos[1] = ["https://youtu.be/bfiWkQBSdsI"]; // Asana
    videos[2] = ["https://youtu.be/0vpYm8YwTaA"]; // Asana
    videos[3] = ["https://youtu.be/S90-kwGhrnw"]; // Sun Salutation
    videos[4] = ["https://youtu.be/rlqQuacPjP8"]; // TM Talks
    videos[5] = ["https://www.youtube.com/watch?v=yQ6zUzm16JM&feature=emb_logo"];  // Research
    videos[6] = ["https://youtu.be/Er4eU1wEWQw"];// Research
  }


  _build() {
    List<Widget> result = [];
    List<String> principalImages = images[widget.videosId];
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

  void playYoutubeVideo() {
    List<Widget> result = [];
    List<String> principalVideos = videos[widget.videosId];
    String url;
    for (String videoPath in principalVideos) {
      url = videoPath;
    }

    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "<API_KEY>",
      videoUrl: url,
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
