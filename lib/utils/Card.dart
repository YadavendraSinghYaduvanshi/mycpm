import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  MyCard({this.title, this.image});

  final Widget title;
  final Widget image;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: new EdgeInsets.only(bottom: 10.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              this.title,
             this.image
            ],
          ),
        ),
      ),
    );
  }
}