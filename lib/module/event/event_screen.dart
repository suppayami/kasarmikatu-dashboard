import 'package:flutter/material.dart';
import 'package:kasarmikatu_dashboard/module/common/screen_container.dart';
import 'package:kasarmikatu_dashboard/module/event/event_list.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
      ),
      body: ScreenContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Events",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                shadows: <Shadow>[
                  Shadow(
                    blurRadius: 4.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "Event streaming link will appear before it starts (usually on the same day as the event)",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                shadows: <Shadow>[
                  Shadow(
                    blurRadius: 4.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Expanded(flex: 1, child: EventList())
          ],
        ),
      ),
    );
  }
}
