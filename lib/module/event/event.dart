import 'package:flutter/material.dart';

class PresentationModel {
  final String speaker;
  final String topic;

  PresentationModel({this.speaker, this.topic});
}

class Event extends StatelessWidget {
  final String startTime;
  final String title;
  final Iterable<PresentationModel> presentations;

  Event({
    Key key,
    @required this.startTime,
    @required this.title,
    this.presentations = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(startTime),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox.fromSize(
            size: Size(100, 8),
          ),
          Center(child: Text(title)),
          SizedBox.fromSize(
            size: Size(100, 8),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: presentations.length,
            itemBuilder: (context, index) {
              final presentation = presentations.elementAt(index);
              final speaker = presentation.speaker;
              final topic = presentation.topic;
              return Text("$speaker: $topic");
            },
          ),
        ],
      ),
    );
  }
}
