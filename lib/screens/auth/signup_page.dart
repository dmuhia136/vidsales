import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuick_clone/screens/auth/login_page.dart';
import 'package:kuick_clone/screens/home/home_page.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import '../../utils/exports.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.background_color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  create_account_today,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: InputDecoration(
                  labelText: full_name_hint,
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Styles.primary_color),
                  ),
                )),
                TextFormField(
                    decoration: InputDecoration(
                  labelText: email_hint,
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Styles.primary_color),
                  ),
                )),
                TextFormField(
                    decoration: InputDecoration(
                  labelText: country_region,
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Styles.primary_color),
                  ),
                )

                ),
                TextFormField(
                    decoration: InputDecoration(
                  labelText: password_hint,
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Styles.primary_color),
                  ),
                )),
                SizedBox(
                  height: 15,
                ),
                Text(
                  accept_terms_string,
                  style: TextStyle(),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      terms_and_conditions,
                      style:
                          TextStyle(color: Styles.primary_color, fontSize: 15),
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      signup_string,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) => HomePage())
                        );
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
                              onTap: () {},
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
                          Text(have_an_account),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LogInPage()),
                                );
                              },
                              child: Text(
                                signin_string,
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
