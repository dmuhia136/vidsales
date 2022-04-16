class Card {
  final String name;
  final String number;
  final String zip_code;
  final String expires;
  final String cvv;
  final String id;

  Card(
      {required this.name,
      required this.number,
      required this.zip_code,
      required this.expires,
      required this.cvv,
      required this.id});

  Map<String, dynamic> toJson() => {
        "name": name,
        "number": number,
        "zip_code": zip_code,
        "expires": expires,
        "cvv": cvv,
        "id": id
      };
}
