import 'package:flutter/material.dart';
import 'package:kasarmikatu_dashboard/module/common/screen_container.dart';
import 'package:kasarmikatu_dashboard/module/home/navigation_list.dart';

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
