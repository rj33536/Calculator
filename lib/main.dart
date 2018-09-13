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
  String num1 = '0';
  String sudoOutput = '0';
  String output = '0';
  String expression = '0';
  String outputDisplay = '0';
  bool isSecondNum = false;
  void onNumberPressed(String c) {
    setState(() {
      if (isSecondNum) {
        output = output + c;
        outputDisplay = output;
      } else {
        num1 += c;
        outputDisplay = num1;
      }
    });
  }

  void onExpressionPressed(String c) {
    setState(() {
      expression = c;
      if (isSecondNum)
        sudoOutput = output + expression;
      else
        sudoOutput = num1 + expression;
      isSecondNum = true;
      if (outputDisplay != '0' && output != '0' && expression != '0')
        calculateOutput();
    });
  }

  void calculateOutput() {
    //here will be the main logic for calculator
    setState(() {
      double out;
      sudoOutput = num1 + expression + output;
      if (expression == '+') out = double.parse(num1) + double.parse(output);
      if (expression == '-') out = double.parse(num1) - double.parse(output);
      if (expression == '/') out = double.parse(num1) / double.parse(output);
      if (expression == '*') out = double.parse(num1) * double.parse(output);
      output = '$out';
      if(output==null)
      output='0';
      outputDisplay = output;
      print(output);
      num1 = output;
      output = '0';
      expression = '0';
      if(outputDisplay==null)
      outputDisplay='0';
    });
  }

  void allDelete() {
    setState(() {
      num1 = '0';
      sudoOutput = '0';
      output = '0';
      expression = '0';
      outputDisplay = '0';
      isSecondNum = false;
    });
  }

  void onDelete() {
    setState(() {
      if (isSecondNum){
        if(output.length==0)
        output='0';
        output = output.substring(0, output.length - 1);
        
      }
      else{
        if(num1.length==0)
        num1='0';
        num1 = num1.substring(0, output.length - 1);
      }
      outputDisplay = outputDisplay.substring(0, outputDisplay.length - 1);
      print(output);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
            child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                sudoOutput,
                maxLines: 1,
                style: new TextStyle(
                  fontSize: 25.0,
                ),
              ),
              new Text(
                outputDisplay,
                maxLines: 1,
                style: new TextStyle(
                  fontSize: 45.0,
                ),
              ),
              new Container(
                padding: EdgeInsets.all(8.0),
                child: new Row(
                  children: <Widget>[
                    new RaisedButton(
                      onPressed: () => onNumberPressed('1'),
                      child: new Text('1'),
                      color: Colors.red,
                      padding: EdgeInsets.all(8.0),
                    ),
                    new RaisedButton(
                      onPressed: () => onNumberPressed('2'),
                      child: new Text('2'),
                      color: Colors.red,
                      padding: EdgeInsets.all(8.0),
                    ),
                    new RaisedButton(
                      onPressed: () => onNumberPressed('3'),
                      child: new Text('3'),
                      color: Colors.red,
                      padding: EdgeInsets.all(8.0),
                    ),
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.all(8.0),
                child: new Row(
                  children: <Widget>[
                    new RaisedButton(
                      onPressed: () => onNumberPressed('4'),
                      child: new Text('4'),
                      color: Colors.red,
                      padding: EdgeInsets.all(8.0),
                    ),
                    new RaisedButton(
                      onPressed: () => onNumberPressed('5'),
                      child: new Text('5'),
                      color: Colors.red,
                      padding: EdgeInsets.all(8.0),
                    ),
                    new RaisedButton(
                      onPressed: () => onNumberPressed('6'),
                      child: new Text('6'),
                      color: Colors.red,
                      padding: EdgeInsets.all(8.0),
                    ),
                  ],
                ),
              ),
              new Container(
                  padding: EdgeInsets.all(8.0),
                  child: new Row(
                    children: <Widget>[
                      new RaisedButton(
                        onPressed: () => onNumberPressed('7'),
                        child: new Text('7'),
                        color: Colors.red,
                        padding: EdgeInsets.all(8.0),
                      ),
                      new RaisedButton(
                        onPressed: () => onNumberPressed('8'),
                        child: new Text('8'),
                        color: Colors.red,
                        padding: EdgeInsets.all(8.0),
                      ),
                      new RaisedButton(
                        onPressed: () => onNumberPressed('9'),
                        child: new Text('9'),
                        color: Colors.red,
                        padding: EdgeInsets.all(8.0),
                      ),
                    ],
                  )),
              new Container(
                  padding: EdgeInsets.all(8.0),
                  child: new Row(
                    children: <Widget>[
                      new RaisedButton(
                        onPressed: () => onNumberPressed('0'),
                        child: new Text('0'),
                        color: Colors.red,
                        padding: EdgeInsets.all(8.0),
                      ),
                      new RaisedButton(
                        onPressed: () => onExpressionPressed('+'),
                        child: new Text('+'),
                        color: Colors.red,
                        padding: EdgeInsets.all(8.0),
                      ),
                      new RaisedButton(
                        onPressed: calculateOutput,
                        child: new Text('='),
                        color: Colors.red,
                        padding: EdgeInsets.all(8.0),
                      ),
                    ],
                  )),
              new Container(
                  padding: EdgeInsets.all(8.0),
                  child: new Row(
                    children: <Widget>[
                      new RaisedButton(
                        onPressed: () => onExpressionPressed('-'),
                        child: new Text('-'),
                        color: Colors.red,
                        padding: EdgeInsets.all(8.0),
                      ),
                      new RaisedButton(
                        onPressed: () => onExpressionPressed('/'),
                        child: new Text('/'),
                        color: Colors.red,
                        padding: EdgeInsets.all(8.0),
                      ),
                      new RaisedButton(
                        onPressed: () => onExpressionPressed('*'),
                        child: new Text('*'),
                        color: Colors.red,
                        padding: EdgeInsets.all(8.0),
                      ),
                    ],
                  )),
              new Container(
                  child: new Row(
                children: <Widget>[
                  new RaisedButton(
                    onPressed:allDelete,
                    child: new Text('C'),
                    color: Colors.red,
                    padding: EdgeInsets.all(8.0),
                  ),
                  new RaisedButton(
                    onPressed: onDelete,
                    child: new Text('<='),
                    color: Colors.red,
                    padding: EdgeInsets.all(8.0),
                  ),
                  new RaisedButton(
                    onPressed: ()=>onNumberPressed('.'),
                    child: new Text('.'),
                    color: Colors.red,
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}
//new line
