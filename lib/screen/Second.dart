import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mycpm/utils/Card.dart';

/*class MyCard extends StatelessWidget {

  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;


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
              new RaisedButton(child: new Text("Next"),onPressed: (){Navigator.of(context).pushNamed('/Login');})
            ],
          ),
        ),
      ),
    );
  }
}*/

class Second extends StatelessWidget {

  static Text child1 = new Text("Raghav Taneja");
  static Image child2 = new Image(image: new AssetImage('assets/profile_pic.png'),
    height: 100.0,
  width: 100.0,);

  static var pad = const EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0);
  static Padding padding1 = new Padding(padding: pad, child: child1,);
  static Padding padding2 = new Padding(padding: pad, child: child2,);

  static var children = [padding1, padding2];
  static ListView listview = new ListView(children: children);
  Drawer drawer = new Drawer(child: listview,);

  @override
  Widget build(BuildContext context) {
    final title = 'MY - CPM';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        drawer: drawer,
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                margin: new EdgeInsets.symmetric(vertical: 5.0),
                height: 100.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(
                          top: 2.0, bottom: 2.0, right: 5.0),
                      child: new CircleAvatar(
                        backgroundImage: new AssetImage(
                            'assets/carporate.jpg'),
                        radius: 40.0,
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(
                          top: 4.0, bottom: 4.0, right: 10.0),
                      child: new CircleAvatar(
                        backgroundImage: new AssetImage(
                            'assets/news.png'),
                        radius: 40.0,
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(
                          top: 4.0, bottom: 4.0, right: 10.0),
                      child: new CircleAvatar(
                        backgroundImage: new AssetImage(
                            'assets/hr.png'),
                        radius: 40.0,
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(
                          top: 4.0, bottom: 4.0, right: 10.0),
                      child: new CircleAvatar(
                        backgroundImage: new AssetImage(
                            'assets/finance.png'),
                        radius: 40.0,
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(
                          top: 4.0, bottom: 4.0, right: 10.0),
                      child: new CircleAvatar(
                        backgroundImage: new AssetImage(
                            'assets/cpm_10th_year_celebration.png'),
                        radius: 40.0,
                      ),
                    ),
                  ],
                ),
              ),

              new SingleChildScrollView(scrollDirection: Axis.vertical,
                child: new Container(
                  height: 330.0,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      new MyCard(
                        title: new Text("Team CPM event", style: new TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic),),
                        image: new Image(
                          image: new AssetImage('assets/image_fashion.jpg'),
                          height: 90.0 ),
                      ),
                      new MyCard(
                        title: new Text("Music concert event", style: new TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic),),
                        image: new Image(
                          image: new AssetImage('assets/event1.jpg'),
                          height: 90.0,
                          ),
                      ),
                     /* new MyCard(
                        title: new Text("Welcome here", style: new TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic),),
                        image: new Image(
                          image: new AssetImage('assets/image_fashion.jpg'),
                          height: 50.0,
                          width: 50.0,),)*/
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}