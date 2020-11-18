import 'package:flutter/material.dart';

class TMImage extends StatefulWidget {

  final String image;
  final double size;
  TMImage({this.image, this.size = 500});

  @override
  _TMImageState createState() => _TMImageState();
}

class _TMImageState extends State<TMImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: DecoratedBox(
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Image.asset(
            'assets/images/' + widget.image,
            // height: widget.size,
            fit: BoxFit.fitHeight,
          ),
        ));
  }
}
