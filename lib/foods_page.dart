import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/food.dart';
class FoodsPage extends StatelessWidget{
  final Category category;
  FoodsPage({required this.category});
  @override
  Widget build(BuildContext context) {
    List<Food> Foods = FAKE_FOODS.where((food) => food.categoryId == this.category.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Foods from ${category.content}'),
      ),
      body: Center(
        child: Center(
          child: ListView.builder(
              itemBuilder: (context, index) {

              },
          ),
        )
      ),
    );
  }
}