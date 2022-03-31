import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_widgets1/screens/display_image.dart';
import 'package:flutter_widgets1/screens/json_demo_screen/assetToModal/home_page.dart';


void main() 
{
  SystemChrome.setSystemUIOverlayStyle
  (
    SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  ); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.blue,
        primarySwatch: Colors.orange,
      ),
     /* 
      //home:MyHomePage(),//To show demo of drawer
      //home: SnackBarDemoPage(),//To show the demo of snackbar.
      //home:TabBarDemo()//To show demo of TabBar
      home:TabBarDemo2()
      */
      //home: ConvertJsonData(),
      home: MyHomePage(),
    
    );
  }
}

