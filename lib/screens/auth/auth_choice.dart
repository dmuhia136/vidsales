import 'package:flutter/material.dart';
import 'package:kuick_clone/screens/auth/login_page.dart';
import 'package:kuick_clone/screens/auth/signup_page.dart';
import 'package:kuick_clone/utils/exports.dart';


class AuthChoice extends StatefulWidget {
  const AuthChoice({Key? key}) : super(key: key);

  @override
  _AuthChoiceState createState() => _AuthChoiceState();
}

class _AuthChoiceState extends State<AuthChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.background_color,
        body: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Styles.primary_color.withOpacity(0.4),
                          blurRadius: 1,
                          spreadRadius: 12,
                          offset: Offset(10, 17))
                    ],
                    color: Styles.primary_color,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(150, 150),
                    )),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Styles.primary_color,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Text(
                      create_account_string,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>  LogInPage()),
                  );
                },
                child: Text(
                  signin_string,
                  style: TextStyle(color: Styles.primary_color, fontSize: 20),
                )),
            const Spacer(),
            Container(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Styles.primary_color,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.elliptical(150, 150),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Styles.primary_color.withOpacity(0.4),
                          blurRadius: 1,
                          spreadRadius: 12,
                          offset: Offset(17, 9))
                    ]),
              ),
            ),
          ],
        ));
  }
}
