// ignore_for_file: prefer_const_constructors, file_names, camel_case_types, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:actividad_2/datos.dart';
import 'package:flutter/material.dart';

class detailPage extends StatelessWidget {
  final int indice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(comidas[indice])),
      body: Column(
        children: [
          Center(
            child: Icon(Icons.food_bank_sharp),
          ),
          Center(
            child: Text('Descripcion'),
          ),
          Row(
            children: [
              Center(
                child: Text('\$Precio'),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Comprar'),
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }

  detailPage(this.indice);

}