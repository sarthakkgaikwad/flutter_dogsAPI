import 'package:flutter/material.dart';
import './image_models.dart';
import 'dart:convert';
import 'package:http/http.dart' show get;
import './image_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<ImageModel> images = [];

  void fetchImage() async {
    var response = await get('https://dog.ceo/api/breeds/image/random');
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFD9D9D9),
        appBar: AppBar(
          backgroundColor: Color(0xFF205D7A),
          title: Text(
            'DOGS',
            style: TextStyle(fontFamily: 'Montserrat', letterSpacing: 4.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          backgroundColor: Color(0xFF5A9297),
          child: Icon(Icons.add),
        ),
        body: ImageList(images),
      ),
    );
  }
}
