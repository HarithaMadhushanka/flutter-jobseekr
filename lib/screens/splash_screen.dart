import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/welcome_screen.dart';

class SlashScreen extends StatefulWidget{

  @override
  _SlashScreenState createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1C1C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/splash_img2.png'),
                ),
                Text(
                  'JobSeekr',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        backgroundColor: Color(0xff1C1C1C),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xffF0C700),
                        ),
                      ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                      'Jobs at your fingertip!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff808080)
                    ),

                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
