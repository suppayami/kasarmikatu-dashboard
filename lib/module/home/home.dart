import 'package:flutter/material.dart';
import './navigation_list.dart';
import '../common/screen_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ScreenContainer(
        child: NavigationList(),
      ),
    );
  }
}
