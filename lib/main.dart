import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import './module/common/api.dart' show client;
import './router.dart' show appRoutes;

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Kasarmikatu Dashboard',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: "/",
        routes: appRoutes,
      ),
    );
  }
}
