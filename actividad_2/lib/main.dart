//  Computo Movil
//  Grupo:1
//  Alumnos:  Alejandro Manuel Hernández García, ale5jan5dro@hotmail.com
//            Felix Flores Paul Jaime, pjff18@gmail.com
//            Andrew Blaise Sánchez Espinosa, andrewblaise@comunidad.unam.mx
//
//    Actividad 2
//

import 'package:actividad_2/detailPage.dart';
import 'package:actividad_2/masterDetail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actividad 2',
      home: masterDetail(),
    );
  }

}