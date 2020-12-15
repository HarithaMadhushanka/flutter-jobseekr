import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/components/popular_jobs_list.dart';
import 'package:flutter_ui/components/job_matched_card.dart';
import 'package:flutter_ui/components/job_category_card.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1C1C),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: Color(0xff1C1C1C),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image(
                      image: AssetImage('images/menu.png'), color: Colors.white,
                    fit: BoxFit.scaleDown,
              ),
                ),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 45,
                      width: 45,
                      child: Image(image: AssetImage('images/user_circle.png'), color: Color(0xffF0C700),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Patrick,',
                      style: TextStyle(fontSize: 26, color: Color(0xffE9E9E9), fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Lets find your dream job!',
                      style: TextStyle(fontSize: 16, color: Color(0xff808080)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search your dream job!',
                          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                          filled: true,
                          fillColor: Color(0xff343434),
                          prefixIcon: Icon(Icons.search, color: Colors.white,),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top:30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text(
                              'Popular Jobs',
                              style: TextStyle(color: Color(0xffE9E9E9), fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          Text(
                            'See all',
                            style: TextStyle(color: Color(0xffF0C700), fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 180.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          PopularJobsCard(
                            designationText: 'UI Designer',
                            companyText: 'Google LLC',
                            imagePath: AssetImage('images/google.png'),
                          ),
                          PopularJobsCard(
                            designationText: 'PHP Developer',
                            companyText: 'Facebook',
                            imagePath: AssetImage('images/facebook.png'),
                          ),
                          PopularJobsCard(
                            designationText: 'Mobile Developer',
                            companyText: 'Twitter',
                            imagePath: AssetImage('images/twitter.png'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Job Matched',
                        style: TextStyle(
                            color: Color(0xffE9E9E9), fontSize: 22, fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    JobMatchedCard(),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Job Category',
                        style: TextStyle(color: Color(0xffE9E9E9), fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          JobCategoryCard(categoryText: 'Design', jobsCount: '172', avgSalary: '4899',),
                          JobCategoryCard(categoryText: 'iOS Developer', jobsCount: '350', avgSalary: '8999',),
                          JobCategoryCard(categoryText: 'UI/UX Developer', jobsCount: '245', avgSalary: '5699',),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }


}


