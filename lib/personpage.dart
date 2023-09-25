import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 26,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content:
                      Text("Please create profile and get it notification")));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 120,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(110),
              child: Image.asset(
                "lib/images/boyimage.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ravinder badesra",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
                Text("rsbadesra38@gmail.com"),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Edit Profile"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    shape: StadiumBorder(),
                    backgroundColor: Colors.amber,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
              ],
            ),
          ),
          ProfileWidget(
            icons: Icons.settings,
            title: 'Setting',
          ),
          ProfileWidget(
            icons: Icons.wallet,
            title: 'Billing Detail',
          ),
          ProfileWidget(
            icons: Icons.supervised_user_circle,
            title: 'User Management',
          ),
          ProfileWidget(
            icons: Icons.info,
            title: 'Information',
          ),
          ProfileWidget(
            icons: Icons.logout_sharp,
            title: 'Logout',
          ),
        ],
      )),
    );
  }
}

//profile widget class create 

class ProfileWidget extends StatelessWidget {
  final String title;
  final IconData icons;

  const ProfileWidget({super.key, required this.title, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {},
        leading: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 178, 205, 250)),
            child: Icon(
              icons,
              color: Color.fromARGB(255, 61, 158, 238),
            )),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
