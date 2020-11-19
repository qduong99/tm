import 'package:TM/src/page/FundamentalPage.dart';
import 'package:TM/src/page/PrincipalDetailPage.dart';
import 'package:flutter/material.dart';
import '../../../common/widget/ItemIcon.dart';

class PrincipalsMenuTab extends StatefulWidget {
  @override
  _PrincipalsMenuTabState createState() => _PrincipalsMenuTabState();
}

class _PrincipalsMenuTabState extends State<PrincipalsMenuTab> {
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
            ItemIcon(text: Text('1.Nature of Life is to grow'), iconData: Icons.check_box, onTap:() {_onPrincipal(1);}),
            ItemIcon(text: Text('2. Order is Present Everywhere'), iconData: Icons.check_circle, onTap:() {_onPrincipal(2);}),
            ItemIcon(text: Text('3. Life is Found in Layers'), iconData: Icons.check_circle, onTap:() {_onPrincipal(3);}),
            ItemIcon(text: Text('4. Outer Depends on Inner'), iconData: Icons.check_circle, onTap:() {_onPrincipal(4);}),
            ItemIcon(text: Text('5. Seek the Highest First'), iconData: Icons.check_circle, onTap:() {_onPrincipal(5);}),
            ItemIcon(text: Text('6. Rest and Activity are the Steps of Progress'), iconData: Icons.check_circle, onTap:() {_onPrincipal(6);}),
            ItemIcon(text: Text('7. Enjoy Greater Efficiency (Do Less) and Accomplish More'), iconData: Icons.check_circle, onTap:() {_onPrincipal(7);}),
            ItemIcon(text: Text('8. Every Action has a Reaction'), iconData: Icons.check_circle, onTap:() {_onPrincipal(8);}),
            ItemIcon(text: Text('9. Purification Leads to Progress'), iconData: Icons.check_circle, onTap:() {_onPrincipal(9);}),
            ItemIcon(text: Text('10. The Field of all Possibilities is the Source of all Solutions'), iconData: Icons.check_circle, onTap:() {_onPrincipal(10);}),
            ItemIcon(text: Text('11. Being is the Basis of Thought'), iconData: Icons.check_circle, onTap:() {_onPrincipal(11);}),
            ItemIcon(text: Text('12. Knowledge is gained from inside and outside'), iconData: Icons.check_circle, onTap:() {_onPrincipal(12);}),
            ItemIcon(text: Text('13. Knowledge is Structured in Consciousness'), iconData: Icons.check_circle, onTap:() {_onPrincipal(13);}),
            ItemIcon(text: Text('14. Harmony Exists in Diversity'), iconData: Icons.check_circle, onTap:() {_onPrincipal(14);}),
            ItemIcon(text: Text('15. The whole is contained in every part'), iconData: Icons.check_circle, onTap:() {_onPrincipal(15);}),
            ItemIcon(text: Text('16. The Whole is Greater than the Sum of the Parts'), iconData: Icons.check_circle, onTap:() {_onPrincipal(16);}),
          ],
        ),
      ),
    );
  }

  void _onPrincipal(int principalId) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return PrincipalDetailPage(principalId);
        },
      ),
    );
  }

  void _onFundamental() async {
    Navigator.of(context).pushNamed(
      FundamentalPage.routeName
    );
  }

  void _onTM() async {
    Navigator.of(context).pushNamed(
        FundamentalPage.routeName,
    );
  }
}
