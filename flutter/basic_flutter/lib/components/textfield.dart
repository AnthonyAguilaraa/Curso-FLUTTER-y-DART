import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 60),
        TextField(),
        SizedBox(height: 20),
        TextField(),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(decoration: InputDecoration(hintText: "Introduce tu nombre",
          prefixIcon: Icon(Icons.search))),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(decoration: InputDecoration(hintText: "Introduce tu email",
          prefixIcon: Icon(Icons.search), border: OutlineInputBorder())),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
           obscureText: true,
            decoration: InputDecoration(hintText: "Introduce tu contraseña",
          prefixIcon: Icon(Icons.search), border: OutlineInputBorder())),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 1,
            maxLength: 10,
            decoration: InputDecoration(hintText: "Introduce tu comentario",
          prefixIcon: Icon(Icons.search), border: OutlineInputBorder())),
        ),
      ],
    );
  }
}