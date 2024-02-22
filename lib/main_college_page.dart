// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_given/about_college.dart';
import 'package:task_given/colleges_page.dart';
import 'package:task_given/hostel_page.dart';

class SelectedCollege extends StatefulWidget {
  const SelectedCollege({super.key});

  @override
  State<SelectedCollege> createState() => _SelectedCollegeState();
}

class _SelectedCollegeState extends State<SelectedCollege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 55, 122),
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     // height: 10,
        //     // width: 10,
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(40),
        //     ),
        //     child: IconButton(
        //       onPressed: () {
        //         Get.back();
        //       },
        //       icon: const Icon(
        //         Icons.arrow_back_rounded,
        //       ),
        //     ),
        //   ),
        // ),
        leading: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: 45,
              width: 45,
              // color: Colors.white,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.white),
              child: IconButton(
                  onPressed: () {
                    Get.off(() => CollegePage());
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 20,
                  )),
            ),
          ],
        ),
        title: Text(""),
        actions: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.white,
              ),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.bookmark_border))),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 260,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(
                    "https://a-z-animals.com/media/2023/09/GettyImages-502745877-1024x683.jpg"),
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "GHKJ Engineering college",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.")
              ],
            ),
          )),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "4.3",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Icon(
                  Icons.star_rate_rounded,
                  color: Colors.white,
                  size: 45,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Divider(
          //   thickness: 2,
          // ),
          Container(
            color: Colors.grey[200],
            // decoration: BoxDecoration(
            //     color: Colors.grey[200],
            //     border: Border.all(width: double.infinity)),
            height: 45,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => AboutPage());
                  },
                  child: Text(
                    "About College",
                    // style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(() => HostelPage());
                    },
                    child: Text("Hostel Facility")),
                Text("Q&A"),
                Text("Events"),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            height: 60,
            width: 340,
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
          )
        ],
      ),
    );
  }
}
