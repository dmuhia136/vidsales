import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kuick_clone/screens/home/cartpage.dart';
import 'package:kuick_clone/utils/exports.dart';


class MyProfile1 extends StatelessWidget {
  const MyProfile1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.background_color,
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CartPage()),
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
          title: Text(my_profile_string, style: TextStyle(color: Colors.black),),
        ),
        body: 
StreamBuilder<QuerySnapshot>(
    stream: FirebaseFirestore.instance.collection('users').snapshots(),
    builder: (context, snapshot) {
        if (snapshot.hasData) {
        return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
                DocumentSnapshot doc = snapshot.data!.docs[index];
                return Scaffold(
                  appBar: AppBar(title: Text("")),
                  body: 


           RefreshIndicator(onRefresh: ()async{
            // await getProfile();
           } ,
             child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 15
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          // ignore: unnecessary_null_comparison
                          child:  Image.network((doc['photoUrl']),
                        ),
                   
                        )],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text((doc['name']),
                 
                    )],
                ),
              ),
                     ),
                ));
            });
        } else {
        return Center(child: CircularProgressIndicator(color: Colors.white,)); 
        // Text("No data");
        }
    },
)


        
        );
  }
  }
