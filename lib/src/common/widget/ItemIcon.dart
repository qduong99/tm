import 'package:flutter/material.dart';
import '../../theme.dart';

class ItemIcon extends StatefulWidget {
  final Text text;
  final IconData iconData;
  final void Function() onTap;

  ItemIcon({Key key, this.text, this.iconData, this.onTap});

  @override
  _ItemIconState createState() => _ItemIconState();
}

class _ItemIconState extends State<ItemIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          widget.onTap();
        },
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: appTheme.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      widget.iconData,
                      color: Colors.red,
                      size: 24.0,
                    )),
                widget.text,
              ],
            )));
  }
}
