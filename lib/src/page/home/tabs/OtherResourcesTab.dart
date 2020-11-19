import 'package:TM/src/common/widget/ItemIcon.dart';
import 'package:TM/src/page/home/tabs/VideosTab.dart';
import 'package:flutter/material.dart';

class OtherResourcesTab extends StatefulWidget {
  @override
  _OtherResourcesTabState createState() =>
      _OtherResourcesTabState();
}

class _OtherResourcesTabState extends State<OtherResourcesTab> {
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
            ItemIcon(
                text: Text('Enter Count'),
                iconData: Icons.check_box,
                onTap: _onTap),
            ItemIcon(
                text: Text('Create PI Doc'),
                iconData: Icons.check_box,
                onTap: _onTap),
          ],
        ),
      ),
    );
  }

  void _onTap() async {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return VideosTab();
        },
      ),
    );
  }
}
