// ignore_for_file: prefer_const_constructors, file_names, camel_case_types, use_key_in_widget_constructors

import 'package:actividad_2/datos.dart';
import 'package:actividad_2/detailPage.dart';
import 'package:flutter/material.dart';

class masterDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: encabezado(),
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
      title: Text('Restaurante'),
      subtitle: Text('Direccion'),
      leading: Icon(Icons.location_pin),
      trailing: Icon(Icons.refresh),
      hoverColor: Colors.blueGrey,
    );
  }

  Widget cardComida(BuildContext context, int index){
    return Card(
      child: contenido(context, index),
    );
  }

  Widget contenido(BuildContext context, int index){
    return ListTile(
      title: Text(comidas[index]),
      subtitle: Text('descripcion'),
      leading: Icon(Icons.food_bank_sharp),
      trailing: Column(
        children: [
          Text('\$precio'),
          TextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => detailPage(index),
                )
              );
            },
            child: Text('Comprar'),
          ),
        ],
      ),
      /*onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => detailPage(),
          )
        );
      }*/
    );
  }

}