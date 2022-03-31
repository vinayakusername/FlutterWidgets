import 'package:flutter/material.dart';
class TabBarDemo extends StatelessWidget 
{
  const TabBarDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    /*
       TabBar are used for navigation on single screen means without creating multiple screens you can
       navigate and display content of selected tab. 

       there are two ways to controller tab 1. DefaultTabController 2. create manual TabController and pass it
       in TabBar. to manage tabs(means to sync the content of selected tabs to display of widgets)
     */
    return DefaultTabController
    (
      length: 6,
      child: Scaffold
      (
         appBar: AppBar
         (
           title: Text("Demo of TabBar"),
           centerTitle: true,
           //TabBar is used to create tabs in appBar.
           bottom: TabBar
           (
             isScrollable: true, 
             tabs:
             [
               Tab(icon:Icon(Icons.directions_bike),text:'Bike'),
               Tab(icon:Icon(Icons.directions_train),text: 'Train',),
               Tab(icon: Icon(Icons.directions_bus),text: 'Bus',),
               Tab(icon: Icon(Icons.directions_boat),text: 'Boat',),
               Tab(icon: Icon(Icons.directions_car),text: 'Car',),
               Tab(icon: Icon(Icons.directions_ferry),text: 'Ferry',),
             ]
           ),
           
         ),
         //TabBarView is used to display content of selected tab.
         body:TabBarView
         (
        
           children:
           [
             Icon(Icons.directions_bike),
             Icon(Icons.directions_train),
             Icon(Icons.directions_bus),
             Icon(Icons.directions_boat),
             Icon(Icons.directions_car),
             Icon(Icons.directions_ferry),
           ]
         )
      ),
    );
  }
}