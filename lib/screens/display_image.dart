import'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class DisplayImage extends StatelessWidget 
{
  const DisplayImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Display Network Image'),
      ),
      body: Center
      (
        child: Card
        (
          child: FadeInImage.memoryNetwork
          (
            placeholder:kTransparentImage, 
            image: 'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    );
  }
}