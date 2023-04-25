import 'dart:async';
import 'package:flutter/material.dart';
import 'package:herewego/pages/signInPage.dart';
import 'package:herewego/pages/signUpPage.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static final String id ="splash_page";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initTimer();
  }
 void initTimer(){
    Timer(Duration(seconds: 2),_callNextPage);
 }
  _callNextPage(){
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white54,
        child: Column(
          children: [
            Expanded(child: Center(
              child: Text("Thats Black",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
            )),
            Text("All informations reserved",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
