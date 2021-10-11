
// ignore_for_file: prefer_const_constructors

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
            child: Center(
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
                    child: Container(
                      //height: .1,
                      //width: .1,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(400),
                        shape: BoxShape.circle,
                        color: Colors.greenAccent,
                      ),

                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Expanded(child: Center(child: Text("Alejandro Manuel\nHernández García", style: TextStyle(fontSize: 20)),),),
                          /*Expanded(child: Center(child: Text("Alejandro"),),),
                          Expanded(child: Center(child: Text("Manuel"),),),
                          Expanded(child: Center(child: Text("Hernandez"),),),
                          Expanded(child: Center(child: Text("Garcia"),),),*/
                        ],
                      ),

                    ),
                  ),




                ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Actividad no. 1",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25,),
              ),
            ),
          ),
        ],
      )
    );
  }

}