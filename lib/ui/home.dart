import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;
  Color _textColor = Colors.greenAccent;
  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
      if(_moneyCounter >= 1000) {
        _textColor = Colors.green;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make it rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: Column(
          children: <Widget>[
            Center(
              child: new Text(
                "Get Rich",
                style: new TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 29.9),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new Text("\$$_moneyCounter",
                    style: new TextStyle(
                      color: _textColor,
                      fontSize: 46.9,
                      fontWeight: FontWeight.w800,
                    )),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new FlatButton(
                  onPressed: _rainMoney,
                  child: Text(
                    'Let it rain',
                    style: new TextStyle(fontSize: 19.9),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
