import 'package:flutter/material.dart';


// The StatefulWidget's job is to take data and create a State class.
class MyHomePage extends StatefulWidget 
{
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _MyHomePageState extends State<MyHomePage> 
{
  // Whether the green box should be visible.
  bool _visible = true;
  
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Opacity Demo Using AnimatedOpacity"),
        centerTitle: true,
      ),
      body: Center
      (
        /*
         Using animated opacity widget developer can show and hide the elements or widgets.
         animatedOpacity widget take below parameters:
         opacity: A value from 0.0 (invisible) to 1.0 (fully visible).
         duration: How long the animation should take to complete.
         child: The widget to animate. In this case, the green box.
        */
       child: AnimatedOpacity
        (
          // If the widget is visible, animate to 0.0 (invisible).
         // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0:0.0, 
          duration: const Duration(milliseconds: 500),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container
          (
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton
      (
        onPressed: ()
        {
          // Call setState. This tells Flutter to rebuild the
          // UI with the changes.
          setState(() 
          {
               _visible = !_visible;  
          });
        },
        tooltip:"Toogle Opacity",
        child: Icon(Icons.flip),
      ),
    );
  }
}