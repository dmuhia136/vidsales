import 'package:flutter/material.dart';

import '../../utils/exports.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
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
