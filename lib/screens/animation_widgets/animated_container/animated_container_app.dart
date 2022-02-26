import 'dart:math';
import 'package:flutter/material.dart';


/*
To animate these properties, Flutter provides the AnimatedContainer widget. 
Like the Container widget, AnimatedContainer allows you to define the width, height, background colors, and more. 
However, when the AnimatedContainer is rebuilt with new properties, it automatically animates between the old and new values. 
In Flutter, these types of animations are known as “implicit animations.”
*/

class AnimatedContainerApp extends StatefulWidget 
{
  const AnimatedContainerApp({ Key? key }) : super(key: key);

  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}


class _AnimatedContainerAppState extends State<AnimatedContainerApp> 
{

  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
   double _width = 50;
   double _heigth = 50;
   Color _color = Colors.green;
   BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0); 

// Use setState to rebuild the widget with new values.
 void _changePropertyOfContainer()
 {
   setState(() 
   {
       // Create a random number generator.
       final random = Random();
       // Generate a random width and height.
      _width = random.nextInt(300).toDouble();
      _heigth = random.nextInt(300).toDouble();
       
       // Generate a random color.
      _color = Color.fromRGBO
       (
         random.nextInt(256), 
         random.nextInt(256),
         random.nextInt(256)    , 
         1
       );
       // Generate a random border radius.
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());   
   });
 }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
      title: Text("Animated Container"),
      centerTitle: true,
      ),

      body: Center
      (
        child: AnimatedContainer
        (
          // Use the properties stored in the State class.
          width: _width,
          height: _heigth,
          decoration: BoxDecoration
          (
            color: _color,
            borderRadius: _borderRadius
          ),
          // Define how long the animation should take.
          duration: Duration(seconds: 1),
          // Provide an optional curve to make the animation feel smoother.
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton
      (
        // When the user taps the button _changePropertyOfContainer() will call
        onPressed:() => _changePropertyOfContainer(),
        child: Icon(Icons.play_arrow_sharp),
      ),
    );
    
  }
}