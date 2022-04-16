import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kuick_clone/models/address.dart';

class addressController extends GetxController {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  var number = TextEditingController().obs;
  var address = TextEditingController().obs;
  var city = TextEditingController().obs;
  var postal_code = TextEditingController().obs;
  var county = TextEditingController().obs;

@override
void onInit(){
  super.onInit();
  getAddress();
}
  save_address() async {
    await _googleSignIn.signIn().then((value) async {
      var add = addressModel(
          number: number.value.text,
          address: address.value.text,
          city: city.value.text,
          county: county.value.text,
          postal_code: postal_code.value.text);

      await _firestore.collection('address').doc(value?.id).set(
            add.toJson(),
          );
    });
    number.value.clear();
    address.value.clear();
    city.value.clear();
    postal_code.value.clear();
    county.value.clear();
  }

  getAddress() async {
    await _googleSignIn.signIn().then((value) async {
      DocumentSnapshot querySnapshot =
          await _firestore.collection('address').doc(value?.id).get();
      number.value.text =
          (querySnapshot.data() as Map<String, dynamic>)['number'];
      address.value.text =
          (querySnapshot.data() as Map<String, dynamic>)['address'];
      city.value.text = (querySnapshot.data() as Map<String, dynamic>)['city'];
      postal_code.value.text =
          (querySnapshot.data() as Map<String, dynamic>)['postal_code'];
      county.value.text =
          (querySnapshot.data() as Map<String, dynamic>)['county'];
    });
  }
}
