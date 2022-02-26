import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

/// A draggable card that moves back to [Alignment.center] when it's
/// released.

class DraggableCard extends StatefulWidget 
{
  final Widget child;
  const DraggableCard({ Key? key,required this.child }) : super(key: key);
  
  @override
  _DraggableCardState createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard> with SingleTickerProviderStateMixin
{
  /*
  mixin is used to implement multiple Inheritance in dart.
  SingleTickerProviderStateMixin is mixin. 
  Extending SingleTickerProviderStateMixin allows the state object to be a TickerProvider for the AnimationController. 

  TickerProvider:
  An interface implemented by classes that can vend Ticker objects.

  Tickers can be used by any object that wants to be notified whenever a frame triggers, 
  but are most commonly used indirectly via an AnimationController. 
  AnimationControllers need a TickerProvider to obtain their Ticker. 
  If you are creating an AnimationController from a State, then you can use the TickerProviderStateMixin 
  and SingleTickerProviderStateMixin classes to obtain a suitable TickerProvider. 
  The widget test framework WidgetTester object can be used as a ticker provider in the context of tests. 
  In other contexts, you will have to either pass a TickerProvider from a higher level (e.g. 
  indirectly from a State that mixes in TickerProviderStateMixin), or create a custom TickerProvider subclass. 
   */
  /// The alignment of the card as it is dragged or being animated.
  /// While the card is being dragged, this value is set to the values computed
  /// in the GestureDetector onPanUpdate callback. If the animation is running,
  /// this value is set to the value of the [_animation].
  late AnimationController _controller;
  late Animation<Alignment> _animation;
  Alignment _dragAlignment = Alignment.center;
  

   @override
   void initState()
   {
     super.initState();
     _controller = AnimationController(vsync: this,duration:const Duration(seconds: 1) );
     _controller.addListener(() 
     {
       setState(() 
       {
          _dragAlignment = _animation.value;  
       });
      });
   } 

   @override
   void dispose()
   {
     _controller.dispose();
     super.dispose();
   }

  /// Calculates and runs a [SpringSimulation].
  void _runAnimation(Offset pixelsPerSecond, Size size)
  {
    _animation = _controller.drive
    (
      AlignmentTween
      (
        begin: _dragAlignment,
        end: Alignment.center
      )
    );
    _controller.reset();
    _controller.forward();

  // Calculate the velocity relative to the unit interval, [0,1],
  // used by the animation controller.
  final unitsPerSecondX = pixelsPerSecond.dx / size.width;
  final unitsPerSecondY = pixelsPerSecond.dy / size.height;
  final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
  final unitVelocity = unitsPerSecond.distance;

  const spring = SpringDescription(
    mass: 30,
    stiffness: 1,
    damping: 1,
  );

  final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);

  _controller.animateWith(simulation); 
  }


  @override
  Widget build(BuildContext context) 
  {
    var size = MediaQuery.of(context).size;
    return GestureDetector
    (
      onPanDown: (details)
      {
        _controller.stop();
      },
      onPanUpdate: (details)
      {
        setState(() 
        {
           _dragAlignment += Alignment
           (
             details.delta.dx / (size.width/2),
             details.delta.dy /(size.height/2) 
           );  
        });
      },
      onPanEnd: (details)
      {
        _runAnimation(details.velocity.pixelsPerSecond, size);
      },
      child: Align
      (
        alignment: _dragAlignment,
        child: Card
        (
          child: widget.child,
        ),
      ),
    );
  }
}