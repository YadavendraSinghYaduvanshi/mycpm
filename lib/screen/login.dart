import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatelessWidget {

  static final TextEditingController _uid = new TextEditingController();
  static final TextEditingController _psw = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        title: new Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Center(
                child: new Image(image: new AssetImage('assets/cpm_10th_year_celebration.png'),
                height: 150.0,
                width: 150.0,),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0),
              height: 200.0,
              child: new Center(
                child: new Card(
                  child: new Container(
                    padding: new EdgeInsets.all(15.0),
                    child: new Column(
                      children: <Widget>[
                        new TextField(controller: _uid,
                          decoration: new InputDecoration(
                              hintText: "Enter User Id"),),
                        new TextField(controller: _psw,
                          decoration: new InputDecoration(hintText: "Enter Password"),
                          obscureText: true,),
                        new Container(
                          margin: new EdgeInsets.symmetric(vertical: 10.0),
                          child: new RaisedButton(child: new Text("Submit"),onPressed: (){Navigator.of(context).pushNamed('/Second');}),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0),
              child: new Center(
                child:  new Text("(c) All rights reserved 2018"),
              ),
            ),
          ],
        ),
      )
    );
  }

  void onSubmit() {
    print("Login with: " + _uid.text + " " + _psw.text);

  }

}