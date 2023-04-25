import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:herewego/pages/signInPage.dart';

class AuthService {
  static final _auth = FirebaseAuth.instance;

  static bool _isLoggedIn (){
    User? firebaseuser = _auth.currentUser;
    return firebaseuser != null;
  }

  static Future <User?> signInUser(String email,String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    User? firebaseUser = _auth.currentUser;
    return firebaseUser;
  }

  static Future <User?> signUpUser (String fullname,String email,String password) async {
   var authResult = await _auth.createUserWithEmailAndPassword(email: email, password: password);
  User? user = authResult.user;
  return user;
  }


  static void logOut (BuildContext context) {
    _auth.signOut();
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }
}