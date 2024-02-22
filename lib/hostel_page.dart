// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_given/about_college.dart';
import 'package:task_given/hostel_tiles.dart';
import 'package:task_given/main_college_page.dart';

class HostelPage extends StatelessWidget {
  const HostelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(() => SelectedCollege());
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: Text(
          "GHJK Engineering college",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 10, 55, 122),
      ),
      body: Column(
        children: [
          // Top bar for info
          Container(
            height: 45,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => AboutPage());
                  },
                  child: Text(
                    "About College",
                  ),
                ),
                Text(
                  "Hostel Facility",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text("Q&A"),
                Text("Events"),
              ],
            ),
          ),

          // Bed Icons
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Container(
              height: 40,
              width: 300,
              // color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 10, 55, 122),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.bed,
                          color: Colors.white,
                        ),
                        Text(
                          "4",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 10, 55, 122),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.bed),
                        Text(
                          "3",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 10, 55, 122),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.bed),
                        Text(
                          "2",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 10, 55, 122),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.bed),
                        Text(
                          "1",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Hostel pics
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HostelTile(
                    hostPath:
                        'https://images.trvl-media.com/lodging/19000000/18050000/18049600/18049535/3ea62771.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium'),
                HostelTile(
                    hostPath:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8Ir338byH0NGo2kEcLR3Pw8FpcNQT4hYVkQ&usqp=CAU'),
                HostelTile(
                    hostPath:
                        'https://images.squarespace-cdn.com/content/v1/52755241e4b0c0a3947f293b/ee1800d4-3ac7-44a6-bedb-41023b920cc3/Image+female+dorm+1.jpg'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // Description
          Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
            ),
            child: Container(
              height: 450,
              // color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "GHJK Engineering Hostel",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "4.3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.white,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur ",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Facilities",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(Icons.other_houses),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "College in 400 mtrs",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.shower_outlined),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Bathrooms : 2",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: 60,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 10, 55, 122),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        "Apply Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
