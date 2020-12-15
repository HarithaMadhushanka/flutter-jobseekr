import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobCategoryCard extends StatelessWidget{
  JobCategoryCard({@required this.categoryText, @required this.jobsCount, @required this.avgSalary});
  final String categoryText;
  final String jobsCount;
  final String avgSalary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
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
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 0, 5),
              child: Text(
                categoryText,
                style: TextStyle(fontSize: 16, color: Color(0xff808080)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 0, 5),
              child: Text(
                jobsCount + '  Jobs',
                style: TextStyle(color: Color(0xffE9E9E9), fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 0, 10),
              child: Text(
                avgSalary + '\$',
                style: TextStyle(color: Color(0xffE9E9E9), fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

}