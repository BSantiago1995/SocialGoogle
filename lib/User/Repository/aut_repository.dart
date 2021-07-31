import 'auto_firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AutRepository{
  //_state sea privada y solo se instancie de StatefulWidget
  final _authFirebase = AutoFireBase();
  //crea una nueva cuenta de usuario con la dirección de correo electrónico y la contraseña proporcionadas
  Future <UserCredential> singInFirebase() => _authFirebase.singIn();
}