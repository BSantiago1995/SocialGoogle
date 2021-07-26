import 'package:flutter/material.dart';
import 'package:flutter_application_2/User/UI/Screem/Login.dart';
import 'package:flutter_application_2/User/UI/Widget/Gradiente.dart';
import 'package:flutter_application_2/User/UI/Widget/TextBox.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Container(
     
        child:ListView(
          children:<Widget>[
         
          Container(
            
            width:500,
            height: 780,
            child: Card(
              
              color: Color.fromRGBO(217,243,244,1.0),
              shadowColor: Colors.deepPurple.shade50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
              margin: EdgeInsets.all(20),
              elevation: 35,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(30),
              child: Column(
                
                children:[
                  Container(
                    margin: EdgeInsets.all(10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    
                    children: [
                    IconButton(
                      
                      onPressed: (){}, 
                      icon:  Icon(Icons.arrow_back_ios,size: 35,)
                      )
                   ,
                  ],
                  ),
                  ),
                  Image( 
                    image:AssetImage('assets/img/yoga.jpg'),
                    height: 400,
                    fit: BoxFit.cover,
                    
                    ),
                  
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                    title: TextBox('Relax Your Mind', 25,Colors.black),
                    subtitle: Text(
                    'Day Episode',textAlign: TextAlign.center,style:TextStyle(fontSize: 15)
                    ),
                    
                  ),
                  Column(
                    children: [
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.archive_rounded,size: 35,),
                          Icon(Icons.thumb_up_alt_outlined,size:35),
                          Icon(Icons.add_comment_rounded,size:35)
                        ],
                      )
                    ],
                  )
                ],
              ),
              ),

            ),
          )
          ]
        )
      )
    );
  }

}