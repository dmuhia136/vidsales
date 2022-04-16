import 'package:flutter/material.dart';

import '../../utils/exports.dart';


class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
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
    );
  }
}
