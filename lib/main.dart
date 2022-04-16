import 'package:flutter/material.dart';
import 'package:kuick_clone/controllers/authentication.dart';
import 'package:kuick_clone/screens/auth/auth_choice.dart';
import 'package:kuick_clone/screens/auth/login_page.dart';
import 'package:kuick_clone/screens/auth/signup_page.dart';
import 'package:kuick_clone/screens/auth/welcome_screen.dart';
import 'package:kuick_clone/screens/home/cartpage.dart';
import 'package:kuick_clone/screens/home/home_page.dart';
import 'package:kuick_clone/screens/home/profile.dart';
import 'package:kuick_clone/screens/home/user_profile.dart';
import 'package:kuick_clone/screens/profile_pages/address_info.dart';
import 'package:kuick_clone/screens/profile_pages/my_profile.dart';
import 'package:kuick_clone/utils/styles.dart';
import 'package:get/get.dart';
import 'screens/profile_pages/payment_info.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart'; //
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
 AuthenticationController _auth=Get.put(AuthenticationController());
  @override

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: _auth.id.value != null? HomePage() : AuthChoice(),
    );
  }
}
