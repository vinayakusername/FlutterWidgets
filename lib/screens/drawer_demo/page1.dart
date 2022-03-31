import 'package:flutter/material.dart';

class Page1 extends StatelessWidget
 {
  final String title; 
  const Page1({ required this.title,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Page1 Demo'),
        centerTitle: true,
      ),
      body: Center(child: Text('Welcome to Page1 requested by $title',textAlign: TextAlign.center,)),
    );
  }
}