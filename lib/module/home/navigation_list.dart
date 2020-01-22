import 'package:flutter/material.dart';
import 'package:kasarmikatu_dashboard/module/common/const.dart';
import 'package:kasarmikatu_dashboard/router.dart';

class NavigationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: SizedBox(
              width: double.infinity,
              height: 160.0,
              child: FlatButton(
                onPressed: _navigateEvent(context),
                child: Text(
                  "Events",
                  style: TextStyle(color: Colors.white),
                ),
                color: cardBackgroundColor,
              )),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: SizedBox(
              width: double.infinity,
              height: 160.0,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Etc",
                  style: TextStyle(color: Colors.white),
                ),
                color: cardBackgroundColor,
              )),
        ),
      ],
    );
  }

  VoidCallback _navigateEvent(BuildContext context) {
    return () {
      Navigator.pushNamed(context, eventRoute);
    };
  }
}
