// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:proy_0/list_page.dart';

class LoginPage extends StatelessWidget {
  static String id = "login_page";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.tealAccent[700],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Proyecto",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ingresar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Registrarse',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              _textFieldName(),
              SizedBox(
                height: 20.0,
              ),
              _textFieldEmail(),
              SizedBox(
                height: 20.0,
              ),
              _textFieldPassword(),
              SizedBox(
                height: 20.0,
              ),
              _buttonSingUp(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldName() {
    return _textFieldGeneral(
      labelText: 'Nombre',
      hintText: 'Alejandro Hernandez',
      icon: Icons.person_outline,
      onChanged: (value) {},
    );
  }

  Widget _textFieldEmail() {
    return _textFieldGeneral(
      labelText: 'Correo',
      hintText: 'example@mail.com',
      keyboardType: TextInputType.emailAddress,
      icon: Icons.email_outlined,
      onChanged: (value) {},
    );
  }

  Widget _textFieldPassword() {
    return _textFieldGeneral(
      labelText: 'Contraseña',
      icon: Icons.lock_outline_rounded,
      onChanged: (value) {},
      obscureText: true,
    );
  }

  Widget _buttonSingUp(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => list_page(),
            ));
      },
      child: Text(
        'Registrarme',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class _textFieldGeneral extends StatefulWidget {
  final String labelText;
  final String hintText;
  final Function onChanged;
  final TextInputType keyboardType;
  final IconData icon;
  final bool obscureText;
  const _textFieldGeneral({
    required this.labelText,
    this.hintText = '',
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.icon = Icons.circle_outlined,
    this.obscureText = false,
  });

  @override
  State<_textFieldGeneral> createState() => _textFieldGeneralState();
}

class _textFieldGeneralState extends State<_textFieldGeneral> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            labelText: widget.labelText,
            hintText: widget.hintText),
        onChanged: (value) {},
      ),
    );
  }
}
