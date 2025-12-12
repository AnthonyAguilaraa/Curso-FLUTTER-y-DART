import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text("Texto basico"),
        Text("Texto basico"),
        Text("Texto basico"),
        Text("Texto basico"),
        Text("Texto basico", style: TextStyle(fontSize: 24)),
        Text("Texto Grande", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Text("Texto curvado", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
        Text("Texto curvado", style: TextStyle(color: Colors.red, fontSize: 18, backgroundColor: Colors.yellow)),
        Text("Decoracion", style: TextStyle(decoration: TextDecoration.underline, fontSize: 22, color: Colors.blue, decorationColor: Colors.red)),
        Text("espacio entre letras", style: TextStyle(letterSpacing: 7, fontSize: 20),),
        Text("Texto largo Texto largoTexto largoTexto largoTexto largoTexto largoTexto largo", style: TextStyle(fontSize: 20),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,),
        Spacer(),
      ],
    );
  }
}
