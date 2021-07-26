import 'AutoFireBase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AutRepository{
  final _authFirebase = AutoFireBase();
  Future <UserCredential> singInFirebase() => _authFirebase.singIn();
}