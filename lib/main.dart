import 'package:flutter/material.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Getting Started",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Table view like app"),
        ),
        body: new HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new ListView.builder(
      itemBuilder: (context, rowNumber) {
        return new Column(
          children: <Widget>[
            new Image.network("https://avatars3.githubusercontent.com/u/30630955?s=400&v=4"),
            new Text("Emrepun profile photo  $rowNumber",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),),
            new Divider(
              color: Colors.green,
            ) //gives divider line
          ],
        );
      },
      itemCount: 5,
    );



//    return new Center(
//      child: new Text("heey",
//        style: new TextStyle(fontSize: 18.0),),
//    );
  }
}
