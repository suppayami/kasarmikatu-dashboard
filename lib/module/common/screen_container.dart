import 'package:flutter/material.dart';
import './assets.dart' as assets;

class ScreenContainer extends StatelessWidget {
  final Widget child;

  ScreenContainer({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assets.BACKGROUND_IMAGE),
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
