import 'dart:math';

import 'category.dart';
import 'package:flutter/cupertino.dart';
class Food{
  late int id;
  late String name;
  late String urlImage;
  late Duration duration;
  late Complexity complexity;
  List<String> ingredients = <String>[];
  int categoryId;
  //Constructor
  Food({
    required this.name,
    required this.categoryId,
    required this.complexity,
    required this.duration,
    required this.ingredients,
    required this.urlImage
  }) {
    //auto id
    this.id = Random().nextInt(100);
  }
}

enum Complexity{
  Simple,
  Medium,
  Hard
}