import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Two Numbers Operations';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: AddTwoNumbers(),
      ),
    );
  }
}

class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String Sum = "0";
  String Sub = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Number 1: ",
                  style: TextStyle(
                  fontSize: 20,
                    ),
                  ),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num1controller,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Number 2: ",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num2controller,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Sum"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) +
                        int.parse(num2controller.text);
                    Sum = sum.toString();
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Result:",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                Sum,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Sub"),
                onPressed: () {
                  setState(() {
                    int sub = int.parse(num1controller.text) -
                        int.parse(num2controller.text);
                    Sub = sub.toString();
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Result: ",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                Sub,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
