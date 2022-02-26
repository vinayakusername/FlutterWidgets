import 'package:flutter/material.dart';
import 'package:flutter_widgets1/screens/animation_widgets/animation_using_physics_simulation/draggable_card.dart';

/*
  Physics simulations can make app interactions feel realistic and interactive. 
  For example, you might want to animate a widget to act as if it were attached to a spring or falling with gravity.

  This recipe demonstrates how to move a widget from a dragged point back to 
  the center using a spring simulation.
 */


class PhysicsCardDragDemo extends StatelessWidget 
{
  const PhysicsCardDragDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('PhysicsCardDragDemo'),
        centerTitle:true
      ),
      body:const DraggableCard
      (
        child:FlutterLogo(size: 128.0,)
      )
    );
  }
}