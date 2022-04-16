class addressModel {
  final String number;
  final String address;
  final String city;
  final String postal_code;
  final String county;
  

  addressModel(
      {required this.number,
      required this.address,
      required this.city,
      required this.county,
      required this.postal_code});

  Map<String, dynamic> toJson()=>{
    "number":number,
    "address": address,
    "city": city,
    "county": county,
    "postal_code": postal_code
  };

}
