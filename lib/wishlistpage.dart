import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List courseimg = ["Python", "React Native", "Flutter", "nodejs"];
    final List coursename = ["Python", "React Native", "Flutter", "Node Js"];
    final List courseprice = ["\$99", "\$89", "\$55", "\$120"];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // foregroundColor: Color.fromARGB(255, 169, 161, 161),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        title: Text(
          "Wishlist",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: coursename.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("you are selected in this course already")));
            },
            child: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(bottom: 3),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 243, 241, 241)),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "lib/images/${courseimg[index]}.png",
                      fit: BoxFit.fill,
                      height: 80,
                      width: 70,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coursename[index],
                          style: TextStyle(fontSize: 22),
                        ),
                        Text("Programmer by ravinder")
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Text(
                          courseprice[index],
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ClipRRect(
                                  child: Image.asset("lib/images/QRcode.jpg"));
                            }));
                          },
                          child: Text("By now"),
                        ),
                      ],
                    )
                  ],
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
