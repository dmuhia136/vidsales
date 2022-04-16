import 'package:flutter/material.dart';
import 'package:kuick_clone/screens/home/orders_page.dart';

import '../../utils/exports.dart';
import 'cartpage.dart';
import 'clips.dart';
import 'live.dart';
import 'profile.dart';
import 'status.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final screens = [
    const ClipsPage(),
    const OrdersPage(),
    LivePage(),
    StatusPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.background_color,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Image.asset(
                  "assets/images/kuick_live.jpg",
                  width: 120,
                  height: 140,
                ),
              ),
              Spacer(),
              Container(
                alignment: Alignment.topRight,
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Styles.primary_color.withOpacity(0.4),
                                blurRadius: 1,
                                spreadRadius: 12,
                                offset: Offset(3, 8))
                          ],
                          color: Styles.primary_color,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(150, 150),
                          )),
                    ),
                    Positioned(
                        bottom: 20,
                        right: 5,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartPage()),
                            );
                          },
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Styles.primary_color,
        unselectedItemColor: Colors.black45,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.smart_display_outlined), label: clips_string),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_outlined), label: orders_string),
          BottomNavigationBarItem(
              icon: Icon(Icons.online_prediction_outlined), label: live_string),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: status_string),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: profile_string),
        ],
      ),
    );
  }
}
