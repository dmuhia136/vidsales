import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';

pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();

  XFile? _file= await _imagePicker.pickImage(source: source);

  if(_file !=null){
    return await _file.path;
  }
  GetSnackBar(animationDuration: Duration(seconds: 10),title: "Error accessing the photo",);
}



