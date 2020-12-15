import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobMatchedCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff333333),
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.4),
            spreadRadius: 0.5,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Master Card',
                      style: TextStyle(color: Color(0xff808080), fontSize: 16.0),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                      child: Image(
                        color: Colors.white70,
                        image: AssetImage(
                          'images/mastercard.png',
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Sr. Product Designer',
                  style: TextStyle(fontSize: 18.0, color: Color(0xffF0C700), fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Labels(labelText: 'User Research',),
                    Labels(labelText: 'User Interface',),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Labels extends StatelessWidget {
  Labels({@required this.labelText});
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 5, right: 10, bottom: 5),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10,6,10,6),
            child: Text(
              labelText,
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white24,
            ),
          ),
        ],
      ),
    );
  }
}
