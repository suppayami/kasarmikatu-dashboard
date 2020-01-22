import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';
import 'package:kasarmikatu_dashboard/module/event/event.dart';

import 'all_events_query.dart';

class EventList extends StatelessWidget {
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
            final startTime = DateFormat("EEEE dd.MM.yyyy HH:mm")
                .format(DateTime.parse(event["startTime"]));
            return Card(
              child: Event(
                key: Key(event["id"]),
                startTime: startTime,
                title: event["title"],
                presentations: List.castFrom(event["presentations"]).map(
                    (presentation) => PresentationModel(
                        speaker: presentation["speaker"]["name"],
                        topic: presentation["topic"])),
              ),
            );
          },
        );
      },
    );
  }
}
