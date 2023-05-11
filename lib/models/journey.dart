import 'package:flutter/material.dart';
import 'package:inu_bus/models/user.dart';

class journey {
  final String club;
  final String name;
  final List <user> Speakers;
  final List <user> FoollowedBySpeakers;
  final List <user> others;

  journey({
   required this.club,
    required this.name,
    this.Speakers =const[],
    this.FoollowedBySpeakers =const[],
    this.others =const[],
  });

}