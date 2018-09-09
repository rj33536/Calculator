import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              new TextField(
               keyboardType: TextInputType.number,
              ),
              new Row(
               children: <Widget>[
                 new RaisedButton(
                   onPressed: null,
                   child: new Text('1'),
                   color: Colors.red,
                 ),
                 new RaisedButton(
                   onPressed: null,
                   child: new Text('2'),
                   color: Colors.red,
                 ),
                 new RaisedButton(
                   onPressed: null,
                   child: new Text('3'),
                   color: Colors.red,
                 ),
               ],
              ),
              new Row(
               children: <Widget>[
                 new RaisedButton(
                   onPressed: null,
                   child: new Text('4'),
                   color: Colors.red,
                 ),
                 new RaisedButton(
                   onPressed: null,
                   child: new Text('5'),
                   color: Colors.red,
                 ),
                 new RaisedButton(
                   onPressed: null,
                   child: new Text('6'),
                   color: Colors.red,
                 ),
               ],
              ),
              new Row(
               children: <Widget>[
                 new RaisedButton(
                   onPressed: null,
                   child: new Text('7'),
                   color: Colors.red,
                 ),
                 new RaisedButton(
                   onPressed: null,
                   child: new Text('8'),
                   color: Colors.red,
                 ),
                 new RaisedButton(
                   onPressed: null,
                   child: new Text('9'),
                   color: Colors.red,
                 ),
               ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//new line