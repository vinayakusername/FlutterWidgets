import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets1/screens/json_demo_screen/assetToUI/displayJsonData.dart';

class ConvertJsonData extends StatelessWidget 
{
  const ConvertJsonData({ Key? key }) : super(key: key);

  // Fetch content from the json file
  Future<void> readJson(BuildContext context) async 
  {
    final String response = await rootBundle.loadString('assets/json_data/sample.json');
    final data = await json.decode(response);
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DisplayJsonData(data:data)));
    // setState(() {
    //   _items = data["items"];
    // });
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Json Data Demo'),
      ),
      body: Center
      (
        child: ElevatedButton
        (
          onPressed:()=>readJson(context), 
          child: Text
          (
            'load data',
            style: TextStyle(fontSize: 20.0),
          )
        ),
      ),
    );
  }
}