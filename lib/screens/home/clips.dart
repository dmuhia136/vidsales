import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuick_clone/screens/home/live.dart';

import '../../utils/exports.dart';

class ClipsPage extends StatefulWidget {
  const ClipsPage({Key? key}) : super(key: key);

  @override
  _ClipsPageState createState() => _ClipsPageState();
}

class _ClipsPageState extends State<ClipsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              clip_page_text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Styles.primary_color),
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
