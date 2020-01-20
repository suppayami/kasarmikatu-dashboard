import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: _Navigation(),
        ),
      ),
    );
  }
}

class _Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: SizedBox(
              width: double.infinity,
              height: 160.0,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Events",
                  style: TextStyle(color: Colors.white),
                ),
                color: Color.fromARGB(32, 32, 32, 32),
              )),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: SizedBox(
              width: double.infinity,
              height: 160.0,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Etc",
                  style: TextStyle(color: Colors.white),
                ),
                color: Color.fromARGB(32, 32, 32, 32),
              )),
        ),
      ],
    );
  }
}
