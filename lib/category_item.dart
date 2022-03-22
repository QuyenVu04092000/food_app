import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/foods_page.dart';
import 'models/category.dart';
class CategoryItem extends StatelessWidget{
  Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;

    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FoodsPage(category: this.category)
          )
        );
        // Navigator.pushNamed(context, '/FoodsPage',arguments: {'category': category});
      },
      splashColor: Colors.deepPurple,
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