import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Pessoas: 0", style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold
        ),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("+1", style: TextStyle(color: Colors.white, fontSize: 30.0)),
              onPressed: () {},
            ),
            FlatButton(
              child: Text("-1", style: TextStyle(color: Colors.white, fontSize: 30.0)),
              onPressed: () {},
            )
          ],
        ),
        Text("Pode entrar!",
        style: TextStyle(color: Colors.white, fontSize: 30.0, fontStyle: FontStyle.italic))

      ],
    )
  ));
}