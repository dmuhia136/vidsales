import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kuick_clone/controllers/profileController.dart';
import 'package:country_picker/country_picker.dart';
import 'package:kuick_clone/utils/methods.dart';
import '../../utils/exports.dart';
import '../home/cartpage.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MyProfile extends StatelessWidget {
  MyProfile({Key? key}) : super(key: key);
  profileController profile = Get.put(profileController());
  final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

  int _value = 0;
  int group = 1;

  void ImagePicker() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    // im = await pickImage(ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.background_color,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          child: Row(
            children: [
              const Spacer(),
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
                                offset: const Offset(3, 8))
                          ],
                          color: Styles.primary_color,
                          borderRadius: const BorderRadius.only(
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
                                  builder: (context) => const CartPage()),
                            );
                          },
                          icon: const Icon(
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
        title: const Text(
          my_profile_string,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () async {
            await profile.getProfile();
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          ImagePicker();
                        },
                        child: CircleAvatar(
                          radius: 50,
                          // ignore: unnecessary_null_comparison
                          child: profile.photoUrl.value != ""
                              ? Image.network(
                                
                                  profile.photoUrl.value,
                                )
                              : const Icon(
                                  Icons.person,
                                  size: 70,
                                ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                      controller: profile.fullname.value,
                      decoration: InputDecoration(
                        labelText: fullname_string,
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.0, color: Colors.grey.shade400)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      )),
                  TextFormField(
                      controller: profile.email.value,
                      decoration: InputDecoration(
                        labelText: email_string,
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.0, color: Colors.grey.shade400)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      )),
                  TextFormField(
                      controller: profile.phonenumber.value,
                      decoration: InputDecoration(
                        labelText: mobile_number_string,
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.0, color: Colors.grey.shade400)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      )),
                  TextFormField(
                      controller: profile.date_of_birth.value,
                      decoration: InputDecoration(
                        labelText: date_of_birth,
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.0, color: Colors.grey.shade400)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      )),
                  TextFormField(
                      controller: profile.country.value,
                      decoration: InputDecoration(
                        labelText: country_region,
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.0, color: Colors.grey.shade400)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(gender_string,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54)),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: profile.male,
                          onChanged: (value) {
                            // setState(() {
                            //   _value = _value;
                            // });
                          }),
                      const Text(male_string),
                      Radio(
                          value: 2,
                          groupValue: profile.female,
                          onChanged: (value) {
                            // setState(() {
                            //   _value = _value;
                            // });
                          }),
                      const Text(female_string)
                    ],
                  ),
                  Divider(color: Colors.grey.shade400),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      profile.profile();
                    },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Styles.primary_color,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 35),
                          child: Text(
                            save_changes_string,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    googleSignIn.signOut();
                  }, child: Text("Logout"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
