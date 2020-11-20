import 'package:TM/src/page/FundamentalDetailPage.dart';
import 'package:flutter/material.dart';
import '../../../common/widget/ItemIcon.dart';

class FundamentalsTab extends StatefulWidget {
  @override
  _FundamentalsTabState createState() => _FundamentalsTabState();
}

class _FundamentalsTabState extends State<FundamentalsTab> {
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
          // physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          crossAxisCount: 3,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          shrinkWrap: true,
          children: <Widget>[
            ItemIcon(text: Text('OVERVIEW'), iconData: Icons.check_box, onTap:() {_onTab("Overview");}),
            ItemIcon(text: Text('STABILITY'), iconData: Icons.check_circle, onTap:() {_onTab("Stability");}),
            ItemIcon(text: Text('ADAPTABILITY'), iconData: Icons.check_circle, onTap:() {_onTab("Adaptability");}),
            ItemIcon(text: Text('PURIFICATION'), iconData: Icons.check_circle, onTap:() {_onTab("Purification");}),
            ItemIcon(text: Text('INTEGRATION'), iconData: Icons.check_circle, onTap:() {_onTab("Integration");}),
            ItemIcon(text: Text('GROWTH'), iconData: Icons.check_circle, onTap:() {_onTab("Growth");}),
            ItemIcon(text: Text('SUMMARY'), iconData: Icons.check_circle, onTap:() {_onTab("Summary");})
          ],
        ),
      ),
    );
  }

  void _onTab(String principalId) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return FundamentalDetailPage(principalId);
        },
      ),
    );
  }

}
