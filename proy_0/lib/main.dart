import 'package:flutter/material.dart';
import 'package:proy_0/list_page.dart';
import 'package:proy_0/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (_) => LoginPage(),
        list_page.id: (_) => list_page(),
      },
    );
  }
}