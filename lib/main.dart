import 'package:flutter/material.dart';
import 'package:flutter_widgets1/screens/animation_widgets/fade_widget_in_out_animation/fade_widget_in_out.dart';
//import 'package:flutter_widgets1/screens/animation_widgets/animated_container/animated_container_app.dart';
//import 'package:flutter_widgets1/screens/animation_widgets/animation_page_route_transition/page1.dart';
//import 'package:flutter_widgets1/screens/animation_widgets/animation_using_physics_simulation/physics_card_drag_demo.dart';

void main() {
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
        primarySwatch: Colors.blue,
      ),
      //home: Page1(),
      //home:PhysicsCardDragDemo(),
      //home:AnimatedContainerApp(),
      home:MyHomePage(),
      
    );
  }
}

