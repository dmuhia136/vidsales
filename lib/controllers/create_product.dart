import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kuick_clone/models/product.dart';
import 'package:kuick_clone/resources/storage_methods.dart';
import 'package:kuick_clone/utils/methods.dart';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class addProduct extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  var product_name = TextEditingController().obs;
  var price = TextEditingController().obs;
  var product_description = TextEditingController().obs;
  var goLive = TextEditingController().obs;
  var file;
  var url = ''.obs;
  var ids = ''.obs;
  var isLoading = false.obs;
  // var image = ''.obs;
  Uint8List? image=[].obs as Uint8List?;

  final FirebaseStorage _storage = FirebaseStorage.instance;

  @override
  void onInit() {
    super.onInit();
  }

  createProduct() async {
    await _googleSignIn.signIn().then((value) async {
      try {
        print("dennis");
        // print("photo of $photo");
        var shop = Product(
            id: value!.id,
            product_name: product_name.value.text,
            price: price.value.text,
            product_description: product_description.value.text,
            image_url: url.value,
            goLive: goLive.value.text);
        await firestore.collection('products').doc(value.id).set(shop.toJson());
        product_name.value.clear();
        price.value.clear();
        product_description.value.clear();
        goLive.value.clear();
      } catch (e) {
        print("e ${e.toString()}");
      }
    });
  }
}
