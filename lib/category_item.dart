import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/category.dart';
class CategoryItem extends StatelessWidget{
  late Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return Container(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(this.category.content,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _color.withOpacity(0.8),
              _color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          color:_color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}