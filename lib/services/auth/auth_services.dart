import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices extends ChangeNotifier{
  //User instance
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //Signin method
  Future<UserCredential> signInWithEmailandPassword(
      String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } 
    on FirebaseAuthException catch (error) {
      throw Exception(error.code);
    }
    
  }
}
