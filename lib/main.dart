import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new AwesomeButton(),
      title: "Buttons & Stateful App",
    )
  );
}

class AwesomeButton extends StatefulWidget {
  
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton> {

  int counter = 0;
  List<String> strings = ["Flutter", "Is", "Simply", "Awesome" ];
  String currentString = "";
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Buttons & State"),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(currentString,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontFamily: "sans-serif",
                  fontWeight: FontWeight.bold
                ),
              ),
              new Padding(padding: new EdgeInsets.all(10.0),),
              new Divider(
                color: Colors.black12, 
                height: 1.0,
              ),
              new Padding(padding: new EdgeInsets.all(10.0),),
              new RaisedButton(
                child: new Text("Press Me", 
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: "Roboto",
                  ),
                ),
                color: Colors.blueAccent,
                onPressed: onRaisedButtonPress,
              )
            ]
          ),
        ),
      ),
    );
  }

  void onRaisedButtonPress() {
    setState(() {
      currentString = strings[counter];
      counter = counter < 3 ? counter+1 : 0;
    });
  }
}

