import 'package:flutter/material.dart';

class Gradiente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.cyan.shade100,Colors.green.shade50],
          begin: const FractionalOffset(1.0, 0.1),
          end: const FractionalOffset(1.0, 0.6)
          )
      ),
    );
  }
}