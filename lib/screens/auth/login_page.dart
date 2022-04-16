import 'package:flutter/material.dart';
import 'package:kuick_clone/controllers/authentication.dart';
import 'package:kuick_clone/screens/auth/signup_page.dart';
import 'package:kuick_clone/screens/home/home_page.dart';
import 'package:kuick_clone/utils/exports.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LogInPage extends StatelessWidget {
  LogInPage({Key? key}) : super(key: key);
// AuthenticationController _authenticationController =Get.put(AuthenticationController());
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
// GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseFirestore _fire = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.background_color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  welcome_back_string,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: InputDecoration(
                  labelText: email_string,
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Styles.primary_color),
                  ),
                )),
                TextFormField(
                    decoration: InputDecoration(
                  labelText: password_string,
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Styles.primary_color),
                  ),
                )),
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          forgot_password_string,
                          style: TextStyle(
                              color: Colors.black54,
                              decoration: TextDecoration.underline),
                        )),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      signin_string,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Styles.primary_color,
                            borderRadius: BorderRadius.circular(25)),
                        child: Icon(
                          Icons.east,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        signup_with_string,
                        style: TextStyle(fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Styles.primary_color,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Icon(
                                  Icons.facebook_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            InkWell(
                              onTap: () async {
                                await _googleSignIn.signIn().then((value) => print(value));
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Styles.primary_color,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Icon(
                                  Icons.mail_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(dont_have_account),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupPage()),
                                );
                              },
                              child: Text(
                                signup_string,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 17),
                              ))
                        ],
                      )
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
