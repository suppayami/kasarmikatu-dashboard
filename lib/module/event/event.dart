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
    return Card(
      color: Color.fromARGB(48, 255, 255, 255),
      elevation: 0,
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: ListTile(
          title: Text(startTime, style: TextStyle(color: Colors.white)),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: presentations.length,
                itemBuilder: (context, index) {
                  final presentation = presentations.elementAt(index);
                  final speaker = presentation.speaker;
                  final topic = presentation.topic;
                  return Text(
                    "$speaker: $topic",
                    style: TextStyle(color: Colors.white),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
