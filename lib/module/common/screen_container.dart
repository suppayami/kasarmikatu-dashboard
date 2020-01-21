import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  final Widget child;

  ScreenContainer({Key key, this.child})
      : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}
