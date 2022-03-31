import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets1/model/photo_model.dart';
import 'package:flutter_widgets1/screens/json_demo_screen/assetToModal/photo_list_page.dart';

class MyHomePage extends StatelessWidget 
{
  const MyHomePage({ Key? key }) : super(key: key);


 Future<List<Photo>> fetchPhotos() async 
 {
  final response = await rootBundle.loadString('assets/json_data/photos.json');
  //print(response);
  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parsePhotos, response);
}

// A function that converts a response body into a List<Photo>.
List<Photo> parsePhotos(String responseBody) 
{
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}


  @override
  Widget build(BuildContext context) 
  {
   return Scaffold
   (
     appBar: AppBar(
        title: Text('Isolate Demo'),
      ),
      body: FutureBuilder<List<Photo>>(
        future: fetchPhotos(),
        builder: (context, snapshot) 
        {
          if (snapshot.hasError) 
          {
            //print(snapshot.error.toString());
            return const Center
            (
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) 
          {
            //return PhotosList(photos: snapshot.data!);
            return PhotoList(photos: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
   );
  }
}