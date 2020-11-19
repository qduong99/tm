import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
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
            'assets/images/logo/miu.png',
            height: 300,
            // fit: BoxFit.contain,
          ),
        ));
  }
}
