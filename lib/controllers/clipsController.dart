import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';

class clipsController extends GetxController {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  var image = ''.obs;
  var notify = false.obs;
  var date = ''.obs;
  var username = ''.obs;
  var nationality = ''.obs;
  var id = ''.obs;

  @override
  void onInit() {
    super.onInit();
    goLive();
  }

  goLive() async {
    await _googleSignIn.signIn().then((value) async {
      DocumentSnapshot querySnapshot =
          await _firestore.collection('users').doc(value!.id).get();
     return querySnapshot;
    });
  }
}
