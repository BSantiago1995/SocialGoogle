import 'package:flutter_application_2/User/Repository/aut_repository.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class BlocUSer implements Bloc{
  final autRepository = AutRepository();
  //Stream es un flujo de datos asincronica  , instance para instanciar la class firebase y el auth para subcribir los cambios
  Stream <User?> streamFirebase= FirebaseAuth.instance.authStateChanges();
  Stream <User?>? get authStatus => streamFirebase;

    Future <UserCredential> singIn(){
      //se usa pra el inicio de sesion
      return autRepository.singInFirebase();
    }
  @override
  void dispose() {
    
  }
}