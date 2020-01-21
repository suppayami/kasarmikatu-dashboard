import 'package:flutter/material.dart';
import '../../router.dart' show EVENT_ROUTE;

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
                color: Color.fromARGB(32, 32, 32, 32),
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
                color: Color.fromARGB(32, 32, 32, 32),
              )),
        ),
      ],
    );
  }

  VoidCallback _navigateEvent(BuildContext context) {
    return () {
      Navigator.pushNamed(context, EVENT_ROUTE);
    };
  }
}
