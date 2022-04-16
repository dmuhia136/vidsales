import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuick_clone/screens/live/create_product.dart';
import 'package:kuick_clone/utils/exports.dart';
import 'package:get/get.dart';
import 'user_profile.dart';

class LivePage extends StatelessWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/spices.jpg"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            primary: Colors.white,
                            onPrimary: Styles.primary_color,
                            side: BorderSide(
                                color: Styles.primary_color, width: 1.5)),
                        onPressed: () {
                          final snackBar = SnackBar(content: Text(snack_bar));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Text(notify_me_string)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserProfile()));
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/spices.jpg"),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("User Name"),
                        Text(
                          "Nationality",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Styles.primary_color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 7),
                        child: Text(
                          "08",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Text("Days", style: TextStyle(fontSize: 9))
                  ],
                ),
                SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Styles.primary_color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 7),
                        child: Text(
                          "08",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Text("Hours", style: TextStyle(fontSize: 9))
                  ],
                ),
                SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Styles.primary_color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 7),
                        child: Text(
                          "08",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Text("Minutes", style: TextStyle(fontSize: 9))
                  ],
                ),
                SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Styles.primary_color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 7),
                        child: Text(
                          "08",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Text(
                      "Seconds",
                      style: TextStyle(fontSize: 9),
                    )
                  ],
                )
              ],
            ),
      FloatingActionButton(onPressed: (){
        Get.to(CreateProduct());
      }, child: Icon(Icons.add_shopping_cart))

          ],

        ),
        
      ),
    );
      
  }
}
