import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileData {

  IconData leading;
  String action;
  IconData trailing;

  ProfileData ({
    required this.action,
    required this.leading,
    required this.trailing
});
}


List action () {

  List<ProfileData> getData = [];

  ProfileData MyProfile = ProfileData(
      action: "My Profile",
      leading: Icons.person_outline,
      trailing: Icons.chevron_right,);
  getData.add(MyProfile);


  ProfileData AddressInfo = ProfileData(
    action: "Address Information",
    leading: Icons.contact_phone,
    trailing: Icons.chevron_right,);
  getData.add(AddressInfo);


  ProfileData PaymentInfo = ProfileData(
    action: "Payment Information",
    leading: Icons.credit_card_outlined,
    trailing: Icons.chevron_right,);
  getData.add(PaymentInfo);


  ProfileData Golive = ProfileData(
    action: "Go Live",
    leading: Icons.online_prediction_outlined,
    trailing: Icons.chevron_right,);
  getData.add(Golive);

  ProfileData AboutUs = ProfileData(
    action: "About us",
    leading: Icons.help_outline,
    trailing: Icons.chevron_right,);
  getData.add(AboutUs);

  ProfileData ContactUs = ProfileData(
    action: "Contact Us",
    leading: Icons.contact_mail,
    trailing: Icons.chevron_right,);
  getData.add(ContactUs);

  ProfileData Delivery = ProfileData(
    action: "Delivery",
    leading: Icons.delivery_dining,
    trailing: Icons.chevron_right,);
  getData.add(Delivery);

  ProfileData Returns = ProfileData(
    action: "Returns",
    leading: Icons.change_circle_outlined,
    trailing: Icons.chevron_right,);
  getData.add(Returns);

  ProfileData PrivacyPolicy = ProfileData(
    action: "PrivacyPolicy",
    leading: Icons.description_outlined,
    trailing: Icons.chevron_right,);
  getData.add( PrivacyPolicy);

  ProfileData Terms = ProfileData(
    action: "Terms of Services",
    leading: Icons.fact_check_outlined,
    trailing: Icons.chevron_right,);
  getData.add(Terms);

  ProfileData Logout = ProfileData(
    action: "Logout",
    leading: Icons.logout_outlined,
    trailing: Icons.chevron_right,);
  getData.add(Logout);
  return getData;
 }