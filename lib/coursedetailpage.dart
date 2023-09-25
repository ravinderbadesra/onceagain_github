// import 'package:educationapp/customvideoplayer.dart';
import 'package:educationapp/videoSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:video_player/video_player.dart';

class CourseDetailPage extends StatelessWidget {
  final String title;
  final String courseprice;
  const CourseDetailPage({
    super.key,
    required this.title, required this.courseprice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Container(
              child: Stack(
                children: [
                  Align(
                    heightFactor: 2,
                    child: Text(
                      title,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new)),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("please check your internet or surver")));
            },
            child: Image.asset(
              "lib/images/pausevideo.jpeg",
              fit: BoxFit.fitWidth,
              height: 240,
              width: 360,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "${title} Programming course",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Created by ravinder",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 104, 104, 104)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (index) {
                        return Icon(
                          Icons.star,
                          color: Colors.amber,
                        );
                      }),
                    ),
                    Text(
                      courseprice,
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 31, 42, 253)),
                    )
                  ],
                ),
              ],
            ),
          ),
          VideoSection(),
          BottomSheet(
            // backgroundColor: Color.fromARGB(255, 254, 255, 254),
            onClosing: () {}, enableDrag: false,
            builder: (context) {
              return SizedBox(
                height: 79,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 244, 244),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 8,
                            spreadRadius: 3,
                            color: Color.fromARGB(255, 146, 148, 146))
                      ]),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                        CupertinoButton(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(12),
                            child: Text("Enroll Now"),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      "App will be progress day's now don't work ")));
                            })
                      ]),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
