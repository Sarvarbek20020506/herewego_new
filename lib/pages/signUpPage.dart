import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:herewego/Services/authservise.dart';
import 'package:herewego/pages/home_page.dart';
import 'package:herewego/pages/signInPage.dart';
class SignUpPage extends StatefulWidget {
  static final String id ="signup_page";
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  var fullnameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

 void _doSignUp(){
  String fullname = fullnameController.text.toString();
  String email = fullnameController.text.toString();
  String password = fullnameController.text.toString();


  if(fullname.isEmpty || email.isEmpty || password.isEmpty) return;
  AuthService.signUpUser(fullname, email, password).then((value) => (){
    responseSignUp(value!);
  });
}
  void responseSignUp (User firebaseuser){
    Navigator.pushReplacementNamed(context, HomePage.id);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Fullname
            TextField(
              controller: fullnameController,
              decoration: InputDecoration(
                hintText: "Fullname",
              ),
            ),
            SizedBox(height: 10,),
            //Email
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            SizedBox(height: 10,),
            //Password
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                _doSignUp();
                Navigator.pushReplacementNamed(context, HomePage.id);
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration:BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
            ),
            SizedBox(height: 17,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Already have an account?",style: TextStyle(color: Colors.black,fontSize: 16),),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SignInPage.id);
                  },
                  child:Text("Sign In",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
