// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_given/hostel_page.dart';
import 'package:task_given/main_college_page.dart';

class AboutPage extends StatelessWidget {
  Future? toHostel() {
    return Get.to(() => HostelPage());
  }

  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(() => SelectedCollege());
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
            )),
        title: Text(
          "GHJK Engineering college",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 10, 55, 122),
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "About College",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                GestureDetector(
                    onTap: toHostel, child: Text("Hostel Facility")),
                Text("Q&A"),
                Text("Events"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 25),
                  child: Text(
                    "Location",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),

                // Location
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 25),
                  child: Container(
                    height: 180,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.addressofchoice.com/aoc_assets/location/1537175024_Bandra_West.png'),
                            fit: BoxFit.cover)),
                  ),
                ),

                // Review
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 25),
                  child: Text(
                    "Student Review",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1365601848/photo/portrait-of-a-young-woman-carrying-her-schoolbooks-outside-at-college.jpg?s=612x612&w=0&k=20&c=EVxLUZsL0ueYFF1Nixit6hg-DkiV52ddGw_orw9BSJA="),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1349297968/photo/happy-female-muslim-student-smiling-in-college.jpg?s=612x612&w=0&k=20&c=d29cHWnlX49P1gcRI16hTvAXu1eQ83A109ffsIVCBZ8="),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/509349623/photo/happy-bookworm.jpg?s=612x612&w=0&k=20&c=2fPCQ8plw0TmUZH2tlnCTEkCrmbG_nkihDmyJPrg-EY="),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("+12")),
                      )
                    ],
                  ),
                ),
                // Single review
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 17),
                  child: Container(
                    width: 300,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aruna Sai",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                            style: TextStyle(fontWeight: FontWeight.w300)),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.yellow[700],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // Apply button
          Container(
            height: 55,
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
        ],
      ),
    );
  }
}
