import 'package:flutter/material.dart';


class ButtonInk extends StatefulWidget {
 
  final String textc;
  double sizes=10;
  double topc=0.0;
   final VoidCallback onPressed;

  ButtonInk(
    //Key key,
    this.textc,
    this.sizes,
    this.topc,
     this.onPressed
    );
    
  @override
   State<StatefulWidget> createState() {
     
      return _ButtonInk();
    }
}
class _ButtonInk extends State<ButtonInk>{
   @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [Colors.red.shade100,Colors.redAccent],
           begin: const FractionalOffset(1.0, 0.1),
          end: const FractionalOffset(1.0, 0.6)
         
        ),
         borderRadius: BorderRadius.circular(25.0),
        ),

       margin: EdgeInsets.only(top: widget.topc),
        constraints: BoxConstraints.expand(height: 35, width: 250),
        child: Center(
          child: Text(widget.textc,
              style: TextStyle(fontSize: widget.sizes, color: Colors.white)),
        ),
      ),
    );
}
}