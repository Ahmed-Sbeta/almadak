import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class Branches{
  String name;
  String image;
  String location;
  String number;
  String description;

  Branches({this.name,this.image,this.location,this.number,this.description});
}