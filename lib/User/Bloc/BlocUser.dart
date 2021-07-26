import 'package:flutter_application_2/User/Repository/AutRepository.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class BlocUSer implements Bloc{
  final autRepository = AutRepository();

  Stream <User?> streamFirebase= FirebaseAuth.instance.authStateChanges();
  Stream <User?>? get authStatus => streamFirebase;

    Future <UserCredential> singIn(){
      return autRepository.singInFirebase();
    }
  @override
  void dispose() {
    
  }
}