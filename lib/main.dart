import 'package:flutter/material.dart';
import 'package:food_app/categories_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with navigation',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: 'Itim',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 52, 52, 1)
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 52, 52, 1)
          ),
          subtitle1: TextStyle(
            fontSize: 25,
            fontFamily: 'Sunshiney',
            color: Colors.white
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Food\'s categories'),
        ),
        body: SafeArea(
          child: CategoriesPage(),
        )
      ),
    );
  }
}