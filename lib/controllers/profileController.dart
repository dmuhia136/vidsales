import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:country_picker/country_picker.dart';

class profileController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // GoogleAuthCredential google =GoogleAuthProvider();
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final fullname = TextEditingController().obs;
  final email = TextEditingController().obs;
  final phonenumber = TextEditingController().obs;
  // ignore: non_constant_identifier_names
  final date_of_birth = TextEditingController().obs;
  final country = TextEditingController().obs;
  final male = TextEditingController().obs;
  final female = TextEditingController().obs;
  var photoUrl = ''.obs;
  RxString id = ''.obs;
  @override
  void onInit() {
    super.onInit();
    getProfile();
  }

  profile() async {
    await _googleSignIn.signIn().then((value) async {
      await firestore.collection('users').doc(value?.id).set({
        "name": value!.displayName,
        "email": value.email,
        "phonenumber": phonenumber.value.text,
        "date_of_birth": date_of_birth.value.text,
        "photoUrl": value.photoUrl,
        "country": country.value.text,
        "male": male.value.text,
        "female": female.value.text
      });
    });
  }

  getProfile() async {
    await _googleSignIn.signIn().then((value) async {
      DocumentSnapshot querySnapshot =
          await firestore.collection('users').doc(value!.id).get();
      fullname.value.text = (querySnapshot.data() as Map<String, dynamic>)['name'];
      email.value.text = (querySnapshot.data() as Map<String, dynamic>)['email'];
      phonenumber.value.text =
          (querySnapshot.data() as Map<String, dynamic>)['phonenumber'];
      date_of_birth.value.text =
          (querySnapshot.data() as Map<String, dynamic>)['date_of_birth'];
      country.value.text = (querySnapshot.data() as Map<String, dynamic>)['country'];
      male.value.text = (querySnapshot.data() as Map<String, dynamic>)['male'];
      female.value.text = (querySnapshot.data() as Map<String, dynamic>)['female'];
      photoUrl.value = (querySnapshot.data() as Map<String, dynamic>)['photoUrl'];

      print(querySnapshot.data());
    });
  }
}
