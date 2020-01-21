import 'package:flutter/material.dart';
import '../common/screen_container.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
      ),
      body: ScreenContainer(
        child: _EventList(),
      ),
    );
  }
}

class _EventList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Text("Say oh yeah");
  }
}
