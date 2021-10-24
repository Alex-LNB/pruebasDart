//  Computo Movil
//  Grupo:1
//  Alumnos:  Alejandro Manuel Hernández García, ale5jan5dro@hotmail.com
//            Felix Flores Paul Jaime, pjff18@gmail.com
//            Andrew Blaise Sánchez Espinosa, andrewblaise@comunidad.unam.mx
//
//    Actividad 2
//

// ignore_for_file: prefer_const_constructors, file_names, camel_case_types, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:actividad_2/datos.dart';
import 'package:actividad_2/detailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
      leading: Icon(Icons.restaurant_menu, size: 30),
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
      subtitle: Column(
        children: [
          Text(comidas[index][1]),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Text('   '+comidas[index][2], style: TextStyle(color: Colors.green),),
              RatingBar.builder(
                itemBuilder: (context, _) => Icon(Icons.star_border, color: Colors.amber),
                onRatingUpdate: (rating){
                  print(rating);
                },
                initialRating: double.parse(comidas[index][4]),
                itemSize: 20,
              ),
            ],
          ),
        ],
      ),
      leading: myImage(index),
      trailing: /*Column(
        children: [
          Expanded(child: Text(comidas[index][2])),
          Expanded(
            flex:2,
            child: */Container(
              height:400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
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
            ),/*
          ),
          Expanded(
            child: Text(comidas[index][4], style: TextStyle(color: Colors.amber)),
            /*child: Center(
              child: RatingBar.builder(
                itemBuilder: (context, _) => Icon(Icons.star_border, color: Colors.amber),
                onRatingUpdate: (rating){
                  print(rating);
                },
                initialRating: double.parse(comidas[index][4]),
              ),
            ),*/
          ),
        ],
      ),*/
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