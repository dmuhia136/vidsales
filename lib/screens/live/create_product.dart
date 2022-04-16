import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kuick_clone/controllers/create_product.dart';
import 'package:kuick_clone/resources/storage_methods.dart';
import 'package:kuick_clone/screens/live/pages/home_page.dart';
import 'package:kuick_clone/screens/live/stream_product.dart';
import 'package:kuick_clone/utils/methods.dart';
import 'package:kuick_clone/utils/strings.dart';

class CreateProduct extends StatelessWidget {
  CreateProduct({Key? key}) : super(key: key);

  addProduct _addProduct = Get.put(addProduct());
  Uint8List? ui;
  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    print("$im kiki");
  //   String photoUrl = await StorageMethods().uploadImageToStorage('products', im, false);
  //   print('$photoUrl photoUrl');
  //   url.value = photoUrl;
  //  _addProduct.image.value=im as String;
  ui=im;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.purple),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child:
                    Text('Add Product', style: TextStyle(color: Colors.purple)),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        selectImage();
                      },
                      child: Stack(
                        children: [
                          Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child:  ui != null ? CircleAvatar(
                                  radius: 64,
                                  backgroundImage: MemoryImage(ui!),
                                ):Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/1170/1170577.png")),
                          Positioned(
                              right: 1,
                              // top:10,
                              bottom: 1,
                              child: Icon(
                                Icons.add_a_photo,
                                color: Colors.purple,
                              ))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, bottom: 10, right: 20),
                    child: TextField(
                      controller: _addProduct.product_name.value,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Product name'),
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, bottom: 10, right: 20),
                    child: TextField(
                      controller: _addProduct.price.value,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Price',
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 20, bottom: 20, right: 20),
                    child: TextField(
                      controller: _addProduct.product_description.value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Description',
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Choose when to go live",
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black54)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                    value: 1,
                    groupValue: 'Now',
                    onChanged: (value) {
                      _addProduct.goLive.value = 'Now' as TextEditingController;
                    }),
                const Text("Now"),
                Radio(
                    value: 2,
                    groupValue: 'profile.female',
                    onChanged: (value) {
                      _addProduct.goLive.value =
                          "Later" as TextEditingController;
                    }),
                const Text("Later")
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  _addProduct.createProduct();
                  Get.to(MyHomePage());
                },
                child: _addProduct.isLoading.value != true ? Text("Create Room"): CircularProgressIndicator(color: Colors.white,))
          ],
        ),
      ),
    );
  }
}