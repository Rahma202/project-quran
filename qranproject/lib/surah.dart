

import 'package:flutter/material.dart';

class Surah{
  String offset;
  int limit;
  Surah({this.offset,this.limit});

  factory Surah.fromJson(Map <String,dynamic> json){
    return Surah(offset:json ['offset'],limit: json['limit']);

  }

}