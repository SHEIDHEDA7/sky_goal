// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_given/college_page_tiles.dart';
import 'package:task_given/home.dart';
import 'package:task_given/main_college_page.dart';

class CollegePage extends StatefulWidget {
  const CollegePage({super.key});

  @override
  State<CollegePage> createState() => _CollegePageState();
}

class _CollegePageState extends State<CollegePage> {
  int selectedIndex = 0;
  void navigateBar(int ind) {
    setState(() {
      selectedIndex = ind;
    });
  }

  Future? toCollege() {
    return Get.to(() => SelectedCollege());
  }

  List<String> colleges = [
    'GHJK Engineering College',
    'Bachelor of Technology  ',
    'Tech Institute of Miami '
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 237, 237),
      body: Column(
        children: [
          // App bar
          Container(
            //color: Color.fromARGB(255, 10, 55, 122),
            height: 170,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 10, 55, 122),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 35),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.to(() => HomePage());
                            },
                            child: Icon(Icons.arrow_back_ios)),
                        Icon(Icons.search),
                        Text(
                          "Search for colleges, schools...",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 35),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.mic_rounded,
                      color: Color.fromARGB(255, 8, 53, 89),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12),

          // Horizontal boxes
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 30,
                width: 120,
                child: Center(
                  child: Text(
                    "MVSH Engineering College",
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(7)),
              ),
              Container(
                height: 30,
                width: 120,
                child: Center(
                  child: Text(
                    "MVSH Engineering College",
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(7)),
              ),
              Container(
                height: 30,
                width: 120,
                child: Center(
                  child: Text(
                    "MVSH Engineering College",
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(7)),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),

          // COLLEGES

          Expanded(
            child: Container(
              color: Color.fromARGB(255, 241, 237, 237),
              child: ListView(children: [
                GestureDetector(
                  onTap: toCollege,
                  child: MySquare(
                    collegeN: colleges[0],
                    imgPath:
                        "https://a-z-animals.com/media/2023/09/GettyImages-502745877-1024x683.jpg",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MySquare(
                  collegeN: colleges[1],
                  imgPath:
                      "https://www.usnews.com/dims4/USNEWS/cd47aff/17177859217/resize/800x540%3E/quality/85/?url=https%3A%2F%2Fwww.usnews.com%2Fcmsmedia%2F6e%2F8d%2Facd3c7d947b59d0f30982fc53bec%2F7-bizzell-library-summer-ou-flag-lamppost-cropped.png",
                ),
                SizedBox(
                  height: 20,
                ),
                MySquare(
                  collegeN: colleges[2],
                  imgPath:
                      "https://wenr.wes.org/wp-content/uploads/2019/09/iStock-1142918319_WENR_Ranking_740_430.jpg",
                ),
              ]),
            ),
          )
        ],
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        backgroundColor: Color.fromARGB(255, 8, 53, 89),
        onTap: navigateBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Search',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add),
              label: 'Saved',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_sharp), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
