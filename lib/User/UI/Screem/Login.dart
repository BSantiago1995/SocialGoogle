import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/User/Bloc/BlocUser.dart';
import 'package:flutter_application_2/User/UI/Widget/ButtonInk.dart';
import 'package:flutter_application_2/User/UI/Widget/Gradiente.dart';
import 'package:flutter_application_2/User/UI/Widget/TextBox.dart';
import 'package:flutter_application_2/User/UI/Screem/Profile.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Login extends StatelessWidget{
  late BlocUSer blocUser;
  @override
  Widget build(BuildContext context){
    blocUser = BlocProvider.of(context);
    return _controlSession();
  }
  Widget _controlSession(){
    return StreamBuilder(
      stream: blocUser.authStatus,
      builder: (
        BuildContext context,
        AsyncSnapshot snapshot
      ){
        if(!snapshot.hasData || snapshot.hasError){
            return loginApp();
        }else{
          return Profile();
        }
      }
      );
  }
  Widget loginApp() {
    return Scaffold(
      body:Container(
        child:ListView(
          children:<Widget>[
          Container(
            width:500,
            height: 790,
            child: Card(
              color: Color.fromRGBO(150, 196, 232, 1.0),
              shadowColor: Colors.teal.shade100,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
              margin: EdgeInsets.all(20),
              elevation: 10,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(30),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                    title: TextBox('Welcome to,',25,Colors.white),
                    subtitle: TextBox('Meditation Care',15,Colors.white),
                    
                  ),
                  Image(image:AssetImage("assets/img/Login.png"),height: 350,fit: BoxFit.fitHeight,),
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                    title: TextBox('Sing in',25,Colors.white),
                    subtitle: TextBox('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci orci suscipi',15,Colors.white),
                    
                  ),
                  Column(
                    children: [
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonInk(
                          'Get Started', 
                          15, 
                          65, 
                          () {blocUser.singIn().then((UserCredential user)=> print("Usted se ha autenticado como ${user.user}")); }
                          ),
                          
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