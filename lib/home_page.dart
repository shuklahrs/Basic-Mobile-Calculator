import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  var num1 = 0,
      num2 = 0,
      res = 0;

  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 - num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = (num1 ~/ num2);
    });
  }

  void clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      res = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("Calculator")
      ),
      body: new Container(
        padding: const EdgeInsets.only(top: 40.0),
        child: new Column(
          children: <Widget>[
            new Text("Output: $res",
              style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            new Padding(padding: const EdgeInsets.only(top: 50.0)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number One"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number Two"),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(onPressed: add,
                  child: new Text("+", style: new TextStyle(fontSize: 18.0),),
                  color: Colors.lightGreenAccent,
                ),
                new MaterialButton(onPressed: sub,
                  child: new Text("-", style: new TextStyle(fontSize: 18.0),),
                  color: Colors.lightGreenAccent,
                ),
                new MaterialButton(onPressed: mul,
                  child: new Text("*", style: new TextStyle(fontSize: 18.0),),
                  color: Colors.lightGreenAccent,
                ),
                new MaterialButton(onPressed: div,
                  child: new Text("/", style: new TextStyle(fontSize: 18.0),),
                  color: Colors.lightGreenAccent,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(onPressed: clear,
                  child: new Text(
                    "Clear", style: new TextStyle(fontSize: 18.0),),
                  color: Colors.greenAccent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}