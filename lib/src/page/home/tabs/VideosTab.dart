import 'package:TM/src/page/VideosDetailPage.dart';
import 'package:flutter/material.dart';

import '../../../common/widget/ItemIcon.dart';
import '../../VideosDetailPage.dart';

class VideosTab extends StatefulWidget {
  @override
  _VideosTabState createState() => _VideosTabState();
}

class _VideosTabState extends State<VideosTab> {
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
            ItemIcon(text: Text('TM Videos'), iconData: Icons.check_box, onTap: _onGIPlanned),
            ItemIcon(text: Text('TM Resources'), iconData: Icons.check_box, onTap: (){
              _onGIPlanned();
            }),
          ],
        ),
      ),
    );
  }

  void _onGIPlanned() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return VideosDetailPage(1);
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
