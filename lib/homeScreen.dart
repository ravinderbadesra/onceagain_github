import 'package:educationapp/HomePage.dart';
import 'package:educationapp/coursepage.dart';
import 'package:educationapp/coursescreen.dart';
import 'package:educationapp/personpage.dart';
import 'package:educationapp/wishlistpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List widgetScreen = [
    HomePage(),
    CoursePage(),
    WishlistPage(),
    PersonPage()
  ];

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetScreen[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 22,
        backgroundColor: Color.fromARGB(255, 238, 235, 235),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: "Course"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Wishlist"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          )
        ],
      ),
    );
  }
}
