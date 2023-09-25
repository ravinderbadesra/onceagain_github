import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'coursescreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> catnames = [
      "Catagory",
      "Class",
      "Freecours",
      "Book store",
      "Live course",
      "Leaderboard",
    ];
    List<Color> catcolors = [
      Colors.yellow,
      Colors.green,
      Colors.blueAccent,
      Color.fromARGB(255, 206, 136, 131),
      Color.fromARGB(255, 244, 48, 48),
      Colors.green,
    ];
    List<Icon> caticons = [
      Icon(
        Icons.category_sharp,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.video_library,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.assignment,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.store,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.play_circle,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.emoji_events,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.category_sharp,
        size: 30,
        color: Colors.white,
      )
    ];

    // course image or data list here
    List courseimg = ["C #", "Python", "React Native", "Flutter"];
    List coursename = ["C #", "Python", "React Native", "Flutter"];
    List coursetime = ["78 video", "45 video", "102 video", "55 video"];
    return Scaffold(
      body: ListView(children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(44),
                bottomRight: Radius.circular(44)),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.widgets,
                    size: 30,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Don't have notification")));
                    },
                    icon: Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Hi, Learner",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 27),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(22)),
              margin: const EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.green,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search here",
                    border: InputBorder.none),
              ),
            )
          ]),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: catnames.length,
                physics: AlwaysScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 1.3),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: catcolors[index],
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 7,
                                    spreadRadius: 3,
                                    color: Colors.grey),
                              ]),
                          child: Center(child: caticons[index]),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(catnames[index])
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Course",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  )
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: coursename.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CourseScreen(courseimg[index])));
                  },
                  child: Container(
                      height: 120,
                      margin:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color.fromARGB(255, 238, 236, 236)),
                      width: double.infinity / 2,
                      child: Column(
                        children: [
                          Image.asset(
                            "lib/images/${courseimg[index]}.png",
                            height: 90,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            coursename[index],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            coursetime[index],
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          )
                        ],
                      )),
                );
              },
            )
          ],
        )
      ]),
    );
  }
}
