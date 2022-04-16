import 'package:flutter/material.dart';
import 'package:kuick_clone/controllers/address_information.dart';
import '../../utils/exports.dart';
import '../home/cartpage.dart';
import 'package:get/get.dart';

class AddressInfo extends StatefulWidget {
  const AddressInfo({Key? key}) : super(key: key);

  @override
  _AddressInfoState createState() => _AddressInfoState();
}

class _AddressInfoState extends State<AddressInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:  IconThemeData(
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
                margin: const EdgeInsets.only(bottom: 20.0),
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
        title: Text(address_info_string, style: TextStyle(color: Colors.black),),
      ),
      body: Container (
        alignment: Alignment.bottomCenter,
        child: ElevatedButton (
          style: ButtonStyle (
            backgroundColor: MaterialStateProperty.all(Styles.primary_color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ))
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddressForm()),
            );
          },
          child: Text (add_address_string),
        ),
      )
    );
  }
  
}


class AddressForm extends StatelessWidget {
AddressForm({ Key? key }) : super(key: key);
addressController _address= Get.put(addressController());
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
        title:  Text(address_info_string, style: TextStyle(color: Colors.black),),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
            await _address.getAddress();
          },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 15, vertical: 15),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Text (mobile_for_shipping),
                TextFormField(
                  controller: _address.number.value,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    )),
                TextFormField(
                  controller: _address.address.value,
                    decoration: InputDecoration(
                      labelText: address_string,
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    )),
               TextFormField(
                 controller: _address.city.value,
                    decoration: InputDecoration(
                      labelText: city_string,
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    )),
              TextFormField(
                controller: _address.postal_code.value,
                    decoration: InputDecoration(
                      labelText: postal_string,
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    )),
                TextFormField(
                  controller: _address.county.value,
                    decoration: InputDecoration(
                      labelText: country_region,
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade400)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    )),
                SizedBox(
                  height: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton (
                    style: ButtonStyle (
                        backgroundColor: MaterialStateProperty.all(Styles.primary_color),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ))
                    ),
                    onPressed: () {
                      _address.save_address();
                      
      
                    },
                    child: Text (add_address_string),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  }





