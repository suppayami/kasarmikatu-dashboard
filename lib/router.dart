import 'package:flutter/material.dart';
import 'package:kasarmikatu_dashboard/module/event/event_screen.dart';
import 'package:kasarmikatu_dashboard/module/home/home_screen.dart';

const homeRoute = "/";
const eventRoute = "/event";

Map<String, WidgetBuilder> appRoutes = {
  homeRoute: (context) => HomeScreen(),
  eventRoute: (context) => EventScreen(),
};
