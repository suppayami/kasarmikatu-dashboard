import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../common/screen_container.dart';
import './all_events_query.dart';

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
    return Query(
      options: QueryOptions(
        documentNode: gql(ALL_EVENTS_QUERY),
        variables: {
          'fromDate': new DateTime.now().toIso8601String(),
        },
        fetchPolicy: FetchPolicy.cacheAndNetwork,
      ),
      builder: (QueryResult result,
          {VoidCallback refetch, FetchMore fetchMore}) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.loading) {
          return Text("Loading...");
        }

        List events = result.data['allEvents'];

        return ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            final startTime = event["startTime"];
            final endTime = event["endTime"];
            return Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(event["title"]),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox.fromSize(
                          size: Size(100, 8),
                        ),
                        Text(event["description"]),
                        Text("Start: $startTime"),
                        Text("End: $endTime"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
