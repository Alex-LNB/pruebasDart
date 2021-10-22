//  Computo Movil
//  Grupo:1
//  Alumnos:  Alejandro Manuel Hernández García, ale5jan5dro@hotmail.com
//            nombre, correo
//            nombre, correo
//
//    Actividad 2
//

// ignore_for_file: prefer_const_constructors, file_names, camel_case_types, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:actividad_2/datos.dart';
import 'package:actividad_2/detailPage.dart';
import 'package:flutter/material.dart';

class masterDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Card(
          child: encabezado(),
          color: Colors.blue[300],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
        ),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context,index){
          return cardComida(context, index);
        },
      )
    );
  }

  Widget encabezado(){
    return ListTile(
      title: Text('Delicias Mexicanas Restaurant',style: TextStyle(fontSize: 15),),
      subtitle: Column(
        children: [
          Text('Tacuba #100, Centro Historico, CDMX, México',style: TextStyle(fontSize: 12),),
        ],
      ),
      leading: Icon(Icons.location_pin, size: 30),
    );
  }

  Widget cardComida(BuildContext context, int index){
    return Card(
      child: contenido(context, index),
    );
  }

  Widget contenido(BuildContext context, int index){
    return ListTile(
      title: Text(comidas[index][0]),
      subtitle: Text(comidas[index][1]),
      leading: myImage(index),
      trailing: Column(
        children: [
          Expanded(child: Text(comidas[index][2])),
          Expanded(
            flex:2,
            child: Container(
              height:400,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blue[100],
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => detailPage(index),
                    )
                  );
                },
                child: Text('View'),
              ),
            ),
          ),
          Expanded(
            child: Text(comidas[index][4], style: TextStyle(color: Colors.amber)),
          ),
        ],
      ),
    );
  }

  Widget myImage(int indice){
    return Image.asset(
      comidas[indice][3],
      width: 50,
      height: 50,
    );
  }

}