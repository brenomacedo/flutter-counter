import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Home(5) 
  ));
}

class Home extends StatefulWidget {

  final int amount;
  Home(this.amount);

  @override
  _HomeState createState() => _HomeState(amount);
}

class _HomeState extends State<Home> {

  final int amount;
  _HomeState(this.amount);

  int _people = 0;
  String _status = 'Pode entrar!';

  void _changePeople(int delta) {
    setState(() {
      int newpeople = _people + delta;

      if(newpeople > 10 || newpeople < 0) {
        return;
      }

      _people += delta;

      if(_people == 10) {
        _status = 'Lotado!';
      }else{
        _status = 'Pode entrar!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: Image.asset(
            'images/bg.jpg',
            fit: BoxFit.cover,
          )
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: $_people", style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("+1", style: TextStyle(color: Colors.white, fontSize: 30.0)),
                    onPressed: () {
                      _changePeople(amount);
                    },
                  )
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("-1", style: TextStyle(color: Colors.white, fontSize: 30.0)),
                    onPressed: () {
                      _changePeople(-1*amount);
                    },
                  )
                )
              ],
            ),
            Text("$_status",
            style: TextStyle(color: Colors.white, fontSize: 30.0, fontStyle: FontStyle.italic))

          ],
        )
      ],
    );
  }
}