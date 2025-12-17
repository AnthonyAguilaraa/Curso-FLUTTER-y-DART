import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {
            print("Pulsado");
          },
          child: const Text('Soy un Button'),
          onLongPress: () {
            print("pulsadoooooo");
          },
          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.red)),
        ),
        OutlinedButton(onPressed: null, child: Text("data")),
        TextButton(onPressed: null, child: Text("data")),
        FloatingActionButton(onPressed: null, child: Text("data")),
        FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
        Spacer()
      ],
    );
  }
}
