import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuick_clone/utils/exports.dart';

import '../../utils/images.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.background_color,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.close))
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/spices.jpg"),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              onPrimary: Styles.primary_color,
                              side: BorderSide(
                                  color: Styles.primary_color, width: 1.5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Text(follow_string)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "User Name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 7,
                ),
                Text("@Username"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "13k",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(" Followers"),
                    SizedBox(
                      width: 40,
                    ),
                    Text("13k",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text(" Following"),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(upcoming_event_string),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          view_all_string,
                          style: TextStyle(color: Styles.primary_color),
                        ))
                  ],
                ),

                Container(
                  height: 150,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(spice),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                   ),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration (
                                        color: Styles.primary_color,

                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("Join", style: TextStyle (
                                          color: Colors.white, fontSize: 14
                                        ),),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text("project 929",
                                style: TextStyle (
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Text("12/12/1223"),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(spice),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration (
                                          color: Styles.primary_color,

                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("Join", style: TextStyle (
                                            color: Colors.white, fontSize: 14
                                        ),),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text("project 929",
                                  style: TextStyle (
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                  ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Text("12/12/1223"),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(spice),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration (
                                          color: Styles.primary_color,

                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("Join", style: TextStyle (
                                            color: Colors.white, fontSize: 14
                                        ),),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text("project 929",
                                  style: TextStyle (
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                  ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Text("12/12/1223"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
