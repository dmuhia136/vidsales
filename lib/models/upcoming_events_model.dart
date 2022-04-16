import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingEvents {

  String imageUrl;
  String join;
  String profile_name;
  String details;


  UpcomingEvents ({
    required this.details,
    required this.imageUrl,
    required this.profile_name,
    required this.join
});

}

List<UpcomingEvents> upcomingDate () {
  List<UpcomingEvents> getData = [];


  UpcomingEvents events = UpcomingEvents(
      details: "The Creative United",
      imageUrl: "assets/images/spices.jpg",
      profile_name: "User name",
      join: "join");

  return getData;
}