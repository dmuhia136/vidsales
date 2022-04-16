import 'dart:typed_data';

class Product{
  String id;
  String product_name;
  String price;
  String product_description;
  String image_url;
  String goLive;

  Product({required this.id,required this.product_name, required this.price, required this.product_description, required this.image_url, required this.goLive});


  Map<String, dynamic> toJson()=>{
    "product_name":product_name,
    "price": price,
    "product_description": product_description,
    "image_url": image_url,
    "id": id,
    "goLive": goLive
  };

}