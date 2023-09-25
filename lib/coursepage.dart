import 'package:educationapp/coursedetailpage.dart';
import 'package:educationapp/coursescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List courseimg = [
      "C #",
      "Python",
      "React Native",
      "Flutter",
      "nodejs"
    ];
    final List coursename = [
      "C #",
      "Python",
      "React Native",
      "Flutter",
      "Node Js"
    ];
    final List courseprice = ["\$49", "\$99", "\$89", "\$55", "\$120"];
    List coursetime = [0.6, 0.4, 1.0, 0.8, 0.7];
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          // centerTitle: true,
          title: Text(
            "Programming Course",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: coursename.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CourseDetailPage(
                                  title: coursename[index],
                                  courseprice: courseprice[index],
                                )));
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              "lib/images/${courseimg[index]}.png",
                              height: 44,
                            ),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  coursename[index],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text("created by rs badesra"),
                                LinearProgressIndicator(
                                  value: coursetime[index],
                                  backgroundColor: Colors.black12,
                                  color: Color.fromARGB(255, 63, 148, 253),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
