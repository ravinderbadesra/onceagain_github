import 'package:educationapp/videoSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img, {super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          widget.img,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.all(15),
              child: Badge(child: Icon(Icons.notifications)))
        ],
      ),
      body: ListView(children: [
        Container(
          height: 250,
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Color.fromARGB(255, 247, 245, 245)),
          child: Image.asset(
            "lib/images/${widget.img}.png",
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${widget.img} completed course",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "This Course Created By Ravinder ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "55 video",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 237, 234, 234),
              borderRadius: BorderRadius.circular(27)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            CupertinoButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                color: Colors.blue,
                child: Text("Video"),
                onPressed: () {}),
            CupertinoButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                color: Color.fromARGB(255, 166, 170, 173),
                child: Text("Description"),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Description is't avaible")));
                })
          ]),
        ),
        VideoSection(),
      ]),
    );
  }
}
