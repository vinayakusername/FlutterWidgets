import 'package:flutter/material.dart';

class DisplayJsonData extends StatefulWidget 
{
  final data;
  const DisplayJsonData({ Key? key,required this.data }) : super(key: key);

  @override
  State<DisplayJsonData> createState() => _DisplayJsonDataState();
}

class _DisplayJsonDataState extends State<DisplayJsonData> 
{
   List _items = [];

   @override
  void initState() 
  {
    // TODO: implement initState
    super.initState();
    setState(() 
    {
       _items = widget.data['items'];  
    });
  }
  
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
       appBar: AppBar(),
       body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // Display the data loaded from sample.json
            _items.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text(_items[index]["id"]),
                            title: Text(_items[index]["name"]),
                            subtitle: Text(_items[index]["description"]),
                          ),
                        );
                      },
                    ),
                  )
                : Center(child: CircularProgressIndicator(),)
          ],
        ),
      ),
    );
  }
}