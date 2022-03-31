import 'package:flutter/material.dart';

class SnackBarDemoPage extends StatelessWidget 
{
  const SnackBarDemoPage({ Key? key }) : super(key: key);


  void _showSnackBar(BuildContext context)
  {
     /*
        It can be useful to briefly inform your users when certain actions take place. 
        For example, when a user swipes away a message in a list, 
        you might want to inform them that the message has been deleted. 
        You might even want to give them an option to undo the action.
        we can display the SnackBar at the bottom of the screen, without overlapping other important widgets.
      */
     final _snackBar = SnackBar
     (
       //backgroundColor:Colors.white,
       content: Text('Item is deleted',/*style: TextStyle(color: Colors.blue),*/),
       action: SnackBarAction
       (
         label: 'Undo the changes', 
         onPressed:()
         {
           // Some code to undo the change.
           
         }
       ),
      
     );

      // Find the ScaffoldMessenger in the widget tree
     // and use it to show a SnackBar.
     ScaffoldMessenger.of(context).showSnackBar(_snackBar);
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('SnackBar Demo',textAlign: TextAlign.center,),
        centerTitle: true,
      ),
      body: Center
      (
        child: ElevatedButton
        (
          onPressed:()=>_showSnackBar(context), 
          child: Text('Show SnackBar to display message'),
        ),
      ) ,
    );
  }
}