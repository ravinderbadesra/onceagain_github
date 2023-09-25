import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class VideoSection extends StatefulWidget {
  const VideoSection({super.key});

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  List videoList = [
    "Introduction",
    "History of programming",
    "Discription",
    "List of video",
    
  ];
  List videoTime = ["45 min", "25 min", "58 min", "122 min"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (index == 0)
                      ? Colors.green
                      : Color.fromARGB(255, 194, 192, 192)),
              child: Icon(Icons.play_arrow)),
          subtitle: Text(videoTime[index]),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          title: Text(
            videoList[index],
            style: TextStyle(color: Colors.black),
          ),
        );
      },
    );
  }
}
