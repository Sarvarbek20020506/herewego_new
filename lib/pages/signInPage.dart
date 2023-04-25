import 'package:flutter/material.dart';
import 'package:herewego/pages/home_page.dart';
import 'package:herewego/pages/signUpPage.dart';
class SignInPage extends StatefulWidget {
  static final String id ="signin_page";
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();


_doSignIn(){
  String email = emailController.text.toString();
  String password = passwordController.text.toString();
  if(email.isEmpty || password.isEmpty) return;
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
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration:BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
            ),
            SizedBox(height: 17,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Don't hava an account?",style: TextStyle(color: Colors.black,fontSize: 16),),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SignUpPage.id);
                  },
                  child:Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
