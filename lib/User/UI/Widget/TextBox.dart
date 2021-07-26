import 'package:flutter/material.dart';

class TextBox extends StatelessWidget{
  String texto_i="hola";
  double sizeLetter=0;
  final Color colores;
  TextBox(this.texto_i,this.sizeLetter,this.colores);
 @override
  Widget build(BuildContext context) {
  return Text(
    texto_i,
  textAlign:TextAlign.center,
  style: TextStyle(
     fontSize: sizeLetter,
  color: colores,
    ),
  );
  
  }

}