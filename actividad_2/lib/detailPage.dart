//  Computo Movil
//  Grupo:1
//  Alumnos:  Alejandro Manuel Hernández García, ale5jan5dro@hotmail.com
//            nombre, correo
//            nombre, correo
//
//    Actividad 2
//

// ignore_for_file: prefer_const_constructors, file_names, camel_case_types, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:actividad_2/datos.dart';
import 'package:flutter/material.dart';

class detailPage extends StatelessWidget {
  final int indice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(comidas[indice][0])),
      body: Column(
        children: [
          Expanded(
            flex:4,
            child: Center(
              child: myImage(indice),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(comidas[indice][1], textAlign: TextAlign.center, style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(comidas[indice][4], style: TextStyle(fontSize: 20, color: Colors.amber)),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(comidas[indice][2], style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
            ),
          ),
          Expanded(
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Volver', style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
        ]
      ),
    );
  }

  detailPage(this.indice);

  Widget myImage(int indice){
    return Image.asset(
      comidas[indice][3],
      width: 400,
      height: 400,
    );
  }

}