import 'package:flutter/material.dart';
import 'package:flutter_widgets1/model/photo_model.dart';
import 'package:transparent_image/transparent_image.dart';

class PhotoList extends StatelessWidget 
{
  const PhotoList({ Key? key,required this.photos }) : super(key: key);

  final List<Photo> photos;
  @override
  Widget build(BuildContext context) 
  {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) 
      {
       //return Image.network(photos[index].thumbnailUrl.toString());
        //return Image.asset(photos[index].thumbnailUrl);
       return _buildProducts(index);
      },
    );
  }
  Widget  _buildProducts(int index)
  {
    return Card
    (
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
      child:Container
      (
        padding: EdgeInsets.all(8),
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: 
          [
            Container
            (
              width: 150,
              height: 150,
             
              child:FadeInImage.memoryNetwork
              (
                placeholder: kTransparentImage,//to show the loading effect.
                image: photos[index].url,
                //image: 'https://picsum.photos/250?image=9',
               
              ),
            ),
            Expanded
            (
              child:Column
              (
                children: 
                [
                   Padding
                    (
                       padding: EdgeInsets.all(2.0),
                       child: 
                           Text
                           (
                             photos[index].id.toString(),
                             style:TextStyle
                            (
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                             )
                       ),
                    ),
                   Padding
                    (
                      padding: EdgeInsets.all(2.0),
                      child: Text
                      (
                        photos[index].title.toString(),
                        style:TextStyle
                         (
                            fontSize: 12,
                            fontWeight: FontWeight.normal
                         )
                       ),
                     ),
                ],
              )
            ),
           
          ],
        ),
      )
    );
  }
}