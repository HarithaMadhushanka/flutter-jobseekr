import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularJobsCard extends StatelessWidget {
  PopularJobsCard({@required this.imagePath, @required this.designationText, @required this.companyText});

  final AssetImage imagePath;
  final String designationText;
  final String companyText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff302F2D),
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.4),
            spreadRadius: 0.5,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(18),
            margin: EdgeInsets.fromLTRB(30,20,30,15),
            child: Image(
              image: imagePath,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xffF0C700),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
            child: Text(
              designationText,
              style: TextStyle(
                color: Color(0xffE9E9E9),
                fontSize: 17,
              ),
            ),
          ),
          Text(
            companyText,
            style: TextStyle(
              color: Color(0xff808080),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}