import 'package:flutter/material.dart';
import 'package:kuick_clone/models/profile.dart';
import 'package:kuick_clone/screens/profile_pages/my_profile.dart';
import '../../utils/exports.dart';
import '../profile_pages/address_info.dart';
import '../profile_pages/payment_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
backgroundColor: Styles.background_color,
      body: ListView (
        children: [Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyProfile()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Row (
                      children: [
                        Icon(Icons.person_outline, color: Styles.primary_color,),
                        SizedBox(
                          width: 15,
                        ),
                        Text("My Profile"),

                        Spacer(),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddressInfo()),
                );
              },
              child: Container(
                decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row (
                    children: [
                      Icon(Icons.contact_phone, color: Styles.primary_color,),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Address Information"),

                      Spacer(),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  PaymentInfo()),
                );
              },
              child: Container(
                decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row (
                    children: [
                      Icon(Icons.credit_card_outlined, color: Styles.primary_color,),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Payment Information"),

                      Spacer(),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row (
                    children: [
                      Icon(Icons.online_prediction_outlined, color: Styles.primary_color,),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Go Live"),

                      Spacer(),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row (
                    children: [
                      Icon(Icons.help_outline, color: Styles.primary_color,),
                      SizedBox(
                        width: 15,
                      ),
                      Text("About us"),

                      Spacer(),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row (
                    children: [
                      Icon(Icons.contact_mail, color: Styles.primary_color,),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Contact Us"),

                      Spacer(),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row (
                    children: [
                      Icon(Icons.delivery_dining, color: Styles.primary_color,),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Delivery"),

                      Spacer(),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row (
                    children: [
                      Icon(Icons.change_circle_outlined, color: Styles.primary_color,),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Returns"),

                      Spacer(),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row (
                    children: [
                      Icon(Icons.description_outlined, color: Styles.primary_color,),
                      SizedBox(
                        width: 15,
                      ),
                      Text("PrivacyPolicy"),

                      Spacer(),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row (
                    children: [
                      Icon(Icons.fact_check_outlined, color: Styles.primary_color,),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Terms of Services"),

                      Spacer(),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration (
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row (
                    children: [
                      Icon(Icons.logout_outlined, color: Styles.primary_color,),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Logout"),

                      Spacer(),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          )
        ]
        )

    );
  }
}
