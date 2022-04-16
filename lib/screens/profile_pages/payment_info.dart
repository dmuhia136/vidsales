import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuick_clone/controllers/save_card.dart';
import 'package:kuick_clone/screens/home/cartpage.dart';
import '../../utils/exports.dart';
import 'package:get/get.dart';

class PaymentInfo extends StatelessWidget {
  PaymentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          child: Row(
            children: [
              Spacer(),
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
                                offset: Offset(3, 8))
                          ],
                          color: Styles.primary_color,
                          borderRadius: BorderRadius.only(
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
                                  builder: (context) => CartPage()),
                            );
                          },
                          icon: Icon(
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
        title: Text(
          my_profile_string,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Styles.primary_color),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddCardForm()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(add_card_string),
          ),
        ),
      ),
    );
  }
}

class AddCardForm extends StatelessWidget {
  AddCardForm({Key? key}) : super(key: key);
  final saveController _cardController = Get.put(saveController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.background_color,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          child: Row(
            children: [
              Spacer(),
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
                                offset: Offset(3, 8))
                          ],
                          color: Styles.primary_color,
                          borderRadius: BorderRadius.only(
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
                                  builder: (context) => CartPage()),
                            );
                          },
                          icon: Icon(
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
        titleSpacing: 0,
        title: Text(
          payment_info_string,
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 20, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name_string),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      controller: _cardController.name.value,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: first_lastname_hint,
                          hintStyle:
                              TextStyle(color: Styles.hint_text, fontSize: 14)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(card_number_string),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      controller: _cardController.number.value,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: card_number_hint,
                          hintStyle:
                              TextStyle(color: Styles.hint_text, fontSize: 14)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(zip_code_string),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      controller: _cardController.zip_code.value,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: zip_code_hint,
                          hintStyle:
                              TextStyle(color: Styles.hint_text, fontSize: 14)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(expires_string),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                controller: _cardController.expires.value,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "MM/YYYY",
                                    hintStyle: TextStyle(
                                        color: Styles.hint_text, fontSize: 14)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cvv_string),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                controller: _cardController.cvv.value,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "***",
                                    hintStyle: TextStyle(
                                        color: Styles.hint_text, fontSize: 14)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Styles.primary_color),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {
                    _cardController.save();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(save_card_string),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
