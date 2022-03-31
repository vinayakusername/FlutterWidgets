import 'package:flutter/material.dart';
import 'package:flutter_widgets1/screens/Drawer_Demo/page1.dart';

/*
In apps that use Material Design, there are two primary options for navigation: tabs and drawers. 
When there is insufficient space to support tabs, drawers provide a handy alternative.
In Flutter, 
use the Drawer widget in combination with a Scaffold to create a layout with a Material Design drawer.
*/
class MyHomePage extends StatelessWidget
{

  const MyHomePage({ Key? key }) : super(key: key);

//Method to display snackBar when user tap on item3 of drawer
  void _showSnackBar(BuildContext context)
  {
    final _snackBar = SnackBar
    (
      content: Text('Item3 is clicked'),
      action: SnackBarAction
      (
        label:'Undo changes', 
        onPressed:(){}
      ),
      
    );
    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
  }

  @override
  Widget build(BuildContext context) 
  {
    /*
      To add a drawer to the app, wrap it in a Scaffold widget. 
      The Scaffold widget provides a consistent visual structure to apps that follow the Material Design Guidelines. 
      It also supports special Material Design components, such as Drawers, AppBars, and SnackBars.
     */
    return Scaffold
    (
       appBar: AppBar
       (
         title: Text("Drawer Demo"),
       ),
       /*
       A drawer can be any widget,but it’s often best to use the Drawer widget from the material library, 
       which adheres to the Material Design spec.

       When a user opens the drawer, Flutter adds the drawer to the navigation stack. 
       Therefore, to close the drawer, call Navigator.pop(context).
        */
       drawer: Drawer
       (
         
          // Add a ListView to the drawer. This ensures the user can scroll
         // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView
        (
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: 
          [
            DrawerHeader
            (
              decoration: BoxDecoration
              (
                color: Colors.blue,
              ),
              child: Text('Drawer Header',style: TextStyle(fontSize: 20.0,color:Colors.white ),textAlign:TextAlign.center,)
             
            ),
            
            ListTile
            (
              leading: Icon(Icons.ac_unit),
              title: Text('Item1'),
              onTap: ()
              {
                 //It is use to close the drawer.
                 Navigator.pop(context);
                 Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Page1(title: 'Item1')));
                 
              },
            ),
            ListTile
            (
              leading: Icon(Icons.access_alarm),
              title: Text('Item2'),
              onTap: ()
              {
                //It is use to close the drawer.
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Page1(title: 'Item2')));
               
              },
          
            ),
            ListTile
            (
              leading: Icon(Icons.photo_size_select_actual,size: 20.0,),
              title: Text('Item3'),
              //onTap: ()=>Navigator.of(context).pop(),
              onTap: ()
              {
                Navigator.of(context).pop();
                _showSnackBar(context);
              }
            )
          ],
        ),
         
       ),
       body: Center
       (
         child: Text("Welcome to Flutter framework")
       ),

    );
  }
}