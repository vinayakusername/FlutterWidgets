import 'package:flutter/material.dart';


class TabBarDemo2 extends StatefulWidget 
{
  const TabBarDemo2({ Key? key }) : super(key: key);

  @override
  _TabBarDemo2State createState() => _TabBarDemo2State();
}

class _TabBarDemo2State extends State<TabBarDemo2> with TickerProviderStateMixin 
{
  TabController? _tabController;//tabController is used to keep track of tab bars.

   /*

   vsync takes a TickerProvider as an argument , that's why we use SingleTickerProviderStateMixin and as the named describes TickerProvider provides Ticker which simply means it tells our app about the Frame update(or Screen Update), 
   so that our AnimationController can generate a new value and we can redraw the animated widget.

   Vsync used for
 
   vsync is the property that represents the TickerProvider (i.e., Tick is similar to clock's tick which means that at every certain duration TickerProvider will render the class state and redraw the object.)

   vsync property is required only on that constructor which requires to render its class state at every certain off-set time when we need to render our components or widgets to redraw and reflect the UI.

   vsync can be used with the classes which require certain transition or animation to re-render to draw different objects.

   */

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 12, vsync: this);
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      
      appBar: AppBar
      (
        title: Text('TabBar Demo2'),
        centerTitle: true,
      ),
      bottomNavigationBar: TabBar
      (
        controller: _tabController,
        labelColor: Colors.blue,
        //isScrollable: true,
        indicator: BoxDecoration
        (
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.orangeAccent
        ),
        //indicatorSize:TabBarIndicatorSize.label,
        tabs: 
        [
          Tab
          (
            icon: Icon(Icons.directions_bike),
            text: 'Bike',
          ),
          Tab
          (
            icon: Icon(Icons.directions_train),
            text: 'Train',
          ),
          Tab
          (
            icon: Icon(Icons.directions_boat),
            text: 'Boat',
          ),
          Tab
          (
            icon: Icon(Icons.directions_car),
            text: 'Car',
          ),
          Tab
          (
            icon: Icon(Icons.directions_ferry),
            text: 'Ferry',
          ),
          Tab
          (
            icon: Icon(Icons.directions_bus),
            text: 'Bus',
          ),

          Tab
          (
            icon: Icon(Icons.directions_bike),
            text: 'Bike',
          ),
          Tab
          (
            icon: Icon(Icons.directions_train),
            text: 'Train',
          ),
          Tab
          (
            icon: Icon(Icons.directions_boat),
            text: 'Boat',
          ),
          Tab
          (
            icon: Icon(Icons.directions_car),
            text: 'Car',
          ),
          Tab
          (
            icon: Icon(Icons.directions_ferry),
            text: 'Ferry',
          ),
          Tab
          (
            icon: Icon(Icons.directions_bus),
            text: 'Bus',
          ),
        ]
      ),
      body: TabBarView
      (
        controller: _tabController,
        children: 
        [
          Center
          (
            child: Icon(Icons.directions_bike,size: 350,),
          ),
          Center
          (
            child: Icon(Icons.directions_train,size: 350,),
          ),
          Center
          (
            child: Icon(Icons.directions_boat,size: 350,),
          ),
          Center
          (
            child: Icon(Icons.directions_car,size: 350,),
          ),
          Center
          (
            child: Icon(Icons.directions_ferry,size: 350,),
          ),
          Center
          (
            child: Icon(Icons.directions_bus,size: 350,),

          ), 

            Center
          (
            child: Icon(Icons.directions_bike,size: 350,),
          ),
          Center
          (
            child: Icon(Icons.directions_train,size: 350,),
          ),
          Center
          (
            child: Icon(Icons.directions_boat,size: 350,),
          ),
          Center
          (
            child: Icon(Icons.directions_car,size: 350,),
          ),
          Center
          (
            child: Icon(Icons.directions_ferry,size: 350,),
          ),
          Center
          (
            child: Icon(Icons.directions_bus,size: 350,),
            
          ),
        ]
      ),

    );
  }
}

