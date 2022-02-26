import 'package:flutter/material.dart';
import 'package:flutter_widgets1/screens/animation_widgets/animation_page_route_transition/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Page Route Transition Example'),
        centerTitle: true,
      ),
      body: Center
      (
        child: ElevatedButton
        (
          onPressed: ()
          {
            Navigator.of(context).push(_createRoute(context));
          }, 
          child: Text("Click to go on Page2",textAlign: TextAlign.center,)
        ),
      ),
    );
  }
  Route _createRoute(BuildContext context)
  {
     return PageRouteBuilder
      (
        pageBuilder: (context,animation,secondaryAnimation)=> const Page2(),
        transitionsBuilder: (context,animation,secondaryAnimation,child)
        {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          /*
          The Curves class provides a predefined set of commonly used curves. 
          For example, Curves.easeOut makes the animation start quickly and end slowly. 
          */
          const curve = Curves.ease;
          //To combine the tweens, use chain():
          //final tween = Tween(begin: begin,end: end).chain(CurveTween(curve: curve));
          final tween = Tween(begin:begin,end: end);
          final curveAnimation = CurvedAnimation
                                  (
                                    parent: animation, 
                                    curve: curve
                                  );
          //final offsetAnimation = animation.drive(tween);
          return SlideTransition
          (
            //position: offsetAnimation,
            position: tween.animate(curveAnimation),
            child: child
          );
        }
      );
  }
}