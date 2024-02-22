// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_given/colleges_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    void navigateBar(int ind) {
      setState(() {
        selectedIndex = ind;
      });
    }

    Future? toCollege() {
      return Get.to(() => CollegePage());
    }

    List<String> courses = [
      'Bachelor of technology',
      'Bachelor of Architecture',
      'Pharmacy',
      'Law',
      'Management'
    ];
    String cur = courses[0];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 55, 122),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Find your own way",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Search in 600 colleges around!",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90.0, bottom: 40),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          Text(
                            "Search for colleges, schools...",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
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
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // Container(
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage("assets/college-students.jpg"),
                    //           fit: BoxFit.contain)
                    //           ),
                    // ),
                    Text(
                      "Top Colleges:",
                      style: TextStyle(fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.white,
                            builder: (context) => (Container(
                                  height: 430,
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Sort By",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: Icon(Icons.close))
                                          ],
                                        ),
                                        Divider(
                                          thickness: 2,
                                        ),
                                        GestureDetector(
                                          onTap: toCollege,
                                          child: ListTile(
                                            leading: Icon(Icons.school),
                                            title: Text(courses[0]),
                                            trailing: Radio(
                                                value: courses[0],
                                                groupValue: cur,
                                                onChanged: (value) {
                                                  setState(() {
                                                    cur = value.toString();
                                                  });
                                                }),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.architecture),
                                          title: Text(courses[1]),
                                          trailing: Radio(
                                              value: courses[1],
                                              groupValue: cur,
                                              onChanged: (value) {
                                                setState(() {
                                                  cur = value.toString();
                                                });
                                              }),
                                        ),
                                        ListTile(
                                          leading: Icon(
                                              Icons.medication_liquid_outlined),
                                          title: Text(courses[2]),
                                          trailing: Radio(
                                              value: courses[2],
                                              groupValue: cur,
                                              onChanged: (value) {
                                                setState(() {
                                                  cur = value.toString();
                                                });
                                              }),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.school_outlined),
                                          title: Text(courses[3]),
                                          trailing: Radio(
                                              value: courses[3],
                                              groupValue: cur,
                                              onChanged: (value) {
                                                setState(() {
                                                  cur = value.toString();
                                                });
                                              }),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.manage_accounts),
                                          title: Text(courses[4]),
                                          trailing: Radio(
                                              value: courses[4],
                                              groupValue: cur,
                                              onChanged: (value) {
                                                setState(() {
                                                  cur = value.toString();
                                                });
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                )));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.ndtvimg.com/i/2016-12/graduation-generic_650x400_81481305985.jpg"),
                                fit: BoxFit.cover)),
                        // padding: EdgeInsets.all(70),
                        height: 120,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Top Schools:",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJP0DHxtaOmzzx5dLeBffG0T-qDu8RRCHlSg&usqp=CAU"),
                              fit: BoxFit.cover)),
                      // padding: EdgeInsets.all(70),
                      height: 120,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Exams:",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://blogs.cardiff.ac.uk/insiders/wp-content/uploads/sites/523/2022/04/Exam-2-508x338.jpg"),
                              fit: BoxFit.cover)),
                      // padding: EdgeInsets.all(70),
                      height: 120,
                      // child: Text("Top Colleges"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Color.fromARGB(255, 8, 53, 89),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        onTap: navigateBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_sharp), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        // fixedColor: Colors.white,
      ),
    );
  }
}
