import 'package:TM/src/page/PrincipalDetailPage.dart';
import 'package:TM/src/page/TMQuestionDetailPage.dart';
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
          // physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          crossAxisCount: 3,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          shrinkWrap: true,
          children: <Widget>[
            ItemIcon(text: Text('1. What is Transcendental Meditation technique? '), iconData: Icons.check_box, onTap:() {_onTab(1);}),
            ItemIcon(text: Text('2. What happen when you meditate? '), iconData: Icons.check_circle, onTap:() {_onTab(2);}),
            ItemIcon(text: Text('3. How do you meditate? '), iconData: Icons.check_circle, onTap:() {_onTab(3);}),
            ItemIcon(text: Text('4. Where did the TM technique come from? '), iconData: Icons.check_circle, onTap:() {_onTab(4);}),
            ItemIcon(text: Text('5. How much research has been done on TM technique? '), iconData: Icons.check_circle, onTap:() {_onTab(5);}),
            ItemIcon(text: Text('6. How is the TM technique different from other forms of meditation? '), iconData: Icons.check_circle, onTap:() {_onTab(6);}),
            ItemIcon(text: Text('7. What if I practice another mediation technique? '), iconData: Icons.check_circle, onTap:() {_onTab(7);}),
            ItemIcon(text: Text('8. Can I learn TM from a book or video? '), iconData: Icons.check_circle, onTap:() {_onTab(8);}),
            ItemIcon(text: Text('9. What if I’m not good at controlling my mind? '), iconData: Icons.check_circle, onTap:() {_onTab(9);}),
            ItemIcon(text: Text('10. What if I’m skeptical? '), iconData: Icons.check_circle, onTap:() {_onTab(10);}),
          ],
        ),
      ),
    );
  }

  void _onTab(int id) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return TMQuestionDetailPage(id);
        },
      ),
    );
  }

}
