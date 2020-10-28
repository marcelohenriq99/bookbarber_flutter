import 'package:flutter/material.dart';

class Service {
  final String id;
  final String description;
  final String category;
  final List<double> price;
  final String time;
  final List<String> avaliableDates;
  final String obs;
  final bool promotion;

  const Service({
    @required this.id,
    this.description,
    @required this.category,
    @required this.price,
    this.time,
    @required this.avaliableDates,
    this.obs,
    this.promotion,
  });

  //getters and setters

}
