// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Act1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: miBody(),
    );
  }

  Widget miBody(){
    return Container(
      color: Colors.lightBlue,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: transformRombo(),
          ),
          Expanded(
            child: textoInferior(),
          ),
        ],
      )
    );
  }

  Widget transformRombo(){
    return Center(
      child: Transform.rotate(
        angle: 3.14192/4,
        child: Container(
          height: 250,
          width: 250,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.redAccent,
          ),
          child: Center(
            child: Transform.rotate(
              angle: -3.14192/4,
              child: containerCirculo(),
            ),
          ),
        ),
      ),
    );
  }

  Widget containerCirculo(){
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.greenAccent,
      ),
      child: Expanded(
        child: textoCirculo(),
      ),
    );
  }

  Widget textoCirculo(){
    return Center(
      child: Text(
        "Alejandro Manuel\nHernández García",
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey[800],
        ),
      ),
    );
  }

  Widget textoInferior(){
    return Center(
      child: Text(
        "Actividad no. 1",
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 25,
          color: Colors.grey[800],
        ),
      ),
    );
  }

}