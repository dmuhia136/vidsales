import 'package:flutter/material.dart';

import '../../utils/exports.dart';


class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData (
          color: Colors.black
        ),
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
                          onPressed: () {},
                          icon: Icon(
                            Icons.chat_outlined,
                            color: Colors.white,
                            size: 27,
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
        titleSpacing: 0,
        title: Text(shopping_cart_string,
          style: TextStyle (
              fontWeight: FontWeight.w800,
              fontSize: 20,
            color: Colors.black
          ),
        ),
      ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(empty_shopping_basket, style: TextStyle (
              color: Styles.primary_color
            ),),
            SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Styles.primary_color),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(discover_live),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
