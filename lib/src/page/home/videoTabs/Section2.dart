import 'package:TM/src/page/PrincipalDetailPage.dart';
import 'package:TM/src/page/VideosDetailPage.dart';
import 'package:flutter/material.dart';
import '../../../common/widget/ItemIcon.dart';
import '../../VideosDetailPage.dart';

class Section2 extends StatefulWidget {

  @override
  _VideosTabState createState() => _VideosTabState();
}

class _VideosTabState extends State<Section2> {

  var video1 = 'Sun Salutation';
  var video2 = 'Sun Salutation 2';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.count(
          //to avoid scrolling conflict with the dragging sheet

          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          crossAxisCount: 3,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          shrinkWrap: true,
          children: <Widget>[
            ItemIcon(text: Text(video1), iconData: Icons.wb_sunny_outlined, onTap:() {_onGIPlanned(5);}),
            ItemIcon(text: Text(video2), iconData: Icons.wb_sunny_outlined, onTap: (){
              _onGIPlanned(6);
            }),
          ],
        ),
      ),
    );
  }

  void _onGIPlanned(int videosId) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return VideosDetailPage(videosId);
        },
      ),
    );
  }



  void _onGIUnplanned() async {
    Navigator.of(context).pushNamed(
        VideosDetailPage.routeName
    );
  }


}
