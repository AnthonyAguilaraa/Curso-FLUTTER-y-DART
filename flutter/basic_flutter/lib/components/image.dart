import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.network("https://imgs.search.brave.com/8JSyrpMsEtkSXMNKTJmigVex2dVbhMBOuL_BqBHwlZw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wcmV2/aWV3LnJlZGQuaXQv/ZHJvcC15b3VyLWZh/dm9yaXRlLWRiei13/YWxscGFwZXItdjAt/MW1pbTN6Y3Q2cWJk/MS5wbmc_YXV0bz13/ZWJwJnM9M2QyYmQ0/NDAyNjMyNmM2MWM5/ZWU2MjRjNTg5OGM4/NzVlYmVhMzdhZg"),
      Image.asset("assets/imagenes/dragon-ball.jpg", height: 100,),
    ]);
  }
}
