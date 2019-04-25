import 'package:flutter/material.dart';
import './image_models.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Color(0xFF366A80))),
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Image.network(images[index].message, fit: BoxFit.cover,),
            ],
          ),
        );
      },
    );
  }
}
