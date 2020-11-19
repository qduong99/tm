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
            ItemIcon(text: Text('1.Nature of Life is to grow'), iconData: Icons.check_box, onTap:() {_onTab(1);}),
            ItemIcon(text: Text('2. Order is Present Everywhere'), iconData: Icons.check_circle, onTap:() {_onTab(2);}),
            ItemIcon(text: Text('3. Life is Found in Layers'), iconData: Icons.check_circle, onTap:() {_onTab(3);}),
            ItemIcon(text: Text('4. Outer Depends on Inner'), iconData: Icons.check_circle, onTap:() {_onTab(4);}),
            ItemIcon(text: Text('5. Seek the Highest First'), iconData: Icons.check_circle, onTap:() {_onTab(5);}),
          ],
        ),
      ),
    );
  }

  void _onTab(int principalId) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return FundamentalDetailPage(principalId);
        },
      ),
    );
  }

}
