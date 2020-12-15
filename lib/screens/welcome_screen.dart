import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1C1C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            padding: const EdgeInsets.all(10.0),
            child: Image(image: AssetImage('images/welcome_img.png',),
              height: MediaQuery.of(context).size.height * 0.36,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text('Welcome', style: TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Text('Find the world\'s most amazing Job in\njust simple steps', style: TextStyle(fontSize: 16, color: Color(0xff808080),),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              padding: EdgeInsets.only(top: 15, bottom: 15),
              color: Color(0xffF0C700),
              child: Text('Login', style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold, ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30.0),
            child: Center(
              child: RichText(
                text: new TextSpan(
                  style: TextStyle(
                    color: Color(0xff808080),
                    fontSize: 14,
                    fontFamily: 'Montserrat'
                  ),
                  children: <TextSpan>[
                    new TextSpan(text: 'Don\'t have an account? '),
                    new TextSpan(text: 'Sign up', style: TextStyle(color: Color(0xffF0C700), fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}