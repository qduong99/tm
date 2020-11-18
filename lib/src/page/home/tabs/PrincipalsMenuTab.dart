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
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          crossAxisCount: 3,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          shrinkWrap: true,
          children: <Widget>[
            ItemIcon(text: Text('1.Nature of Life is to grow'), iconData: Icons.check_box, onTap:() {_onPrincipal(1);}),
            ItemIcon(text: Text('5 Fundamentals'), iconData: Icons.check_circle, onTap: _onFundamental),
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
