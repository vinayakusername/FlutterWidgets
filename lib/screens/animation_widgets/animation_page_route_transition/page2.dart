import 'package:flutter/material.dart';
class Page2 extends StatelessWidget 
{
  const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar(),
      body: Center
      (
        child: Text("Welcome to Page2")
      ),
    );
  }
}