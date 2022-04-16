import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';

// ignore: camel_case_types
class saveController extends GetxController {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  var name = TextEditingController().obs;
  var number = TextEditingController().obs;
  var zip_code = TextEditingController().obs;
  var expires = TextEditingController().obs;
  var cvv = TextEditingController().obs;

  save() async {

    await _googleSignIn.signIn().then((value) async {
      
      await _firestore.collection("save_card").doc(value!.id).set({
        "name": name.value.text,
        "card_number": number.value.text,
        "zip_code": zip_code.value.text,
        "expires": expires.value.text,
        "cvv": cvv.value.text,
        "id": value.id
      });

    
    });
  }
}
