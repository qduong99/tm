import 'package:TM/src/page/PrincipalDetailPage.dart';
import 'package:flutter/material.dart';

import '../../../common/widget/ItemIcon.dart';

class TMQuestionsTab extends StatefulWidget {
  @override
  _TMQuestionsTabState createState() => _TMQuestionsTabState();
}

class _TMQuestionsTabState extends State<TMQuestionsTab> {
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
            ItemIcon(text: Text('TM Questions'), iconData: Icons.check_box, onTap: _onGIPlanned),
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
          return PrincipalDetailPage(1);
        },
      ),
    );
  }

}
