// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String imgPath;
  final String collegeN;

  const MySquare({super.key, required this.imgPath, required this.collegeN});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 2,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            // College pic
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imgPath), fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
            ),

            // Description
            Container(
              height: 130,
              // color: Colors.black,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 5),
                child: Column(
                  children: [
                    Row(children: [
                      Text(
                        collegeN,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      // SizedBox(
                      //   width: 50,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Container(
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
                      )
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Lorem Ipsuim dolor sit amel, consectetur dihen",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 8, 53, 89),
                              borderRadius: BorderRadius.circular(7)),
                          child: Center(
                            child: Text(
                              'Apply Now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "More than 1000+ students have been placed",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.remove_red_eye_outlined,
                            size: 20,
                          ),
                          Text(
                            " 468+",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
