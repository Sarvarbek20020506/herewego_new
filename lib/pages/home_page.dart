import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id ="home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Home"),
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text("Log Out",style: TextStyle(color: Colors.white),),
          ),
        )
      ),
    );
  }
}
