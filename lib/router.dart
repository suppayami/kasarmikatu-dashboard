import 'package:flutter/material.dart';
import 'module/home/home.dart';
import 'module/event/event.dart';

const HOME_ROUTE = "/";
const EVENT_ROUTE = "/event";

Map<String, WidgetBuilder> appRoutes = {
  HOME_ROUTE: (context) => HomeScreen(),
  EVENT_ROUTE: (context) => EventScreen(),
};
