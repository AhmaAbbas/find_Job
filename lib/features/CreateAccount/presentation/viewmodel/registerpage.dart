import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class RegisterPage{
  static Future<void> login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        const SnackBar(content:  Text("weak-password"),);
      } else if (e.code == 'email-already-in-use') {
        const SnackBar(content:  Text("email-already-in-use"),);
      }
    } catch (e) {
      const SnackBar(content:  Text("there are an error please try again"),);
    }

  }
}