import 'package:flutter/material.dart';
import 'package:taiper/taiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Taiper Example"),
      ),
      body: Center(
        child: TaiperContainer([
          TextClayblock(
            type: TextClayblockType.title,
            content: "Hello World. The first title.",
          ),
          TextClayblock(
            type: TextClayblockType.body,
            content:
              "Example of text in body.",
          ),
          TextClayblock(
            type: TextClayblockType.body,
            content:
              "A new example of text in body. More, more, more, more, more, more, more, more, more, more, more, more, more and more words to fill some lines",
          ),
          TextClayblock(
            type: TextClayblockType.title,
            content: "The second title",
          ),
          TextClayblock(
            type: TextClayblockType.body,
            content:
              "A third text of body type. It's ok?",
          ),
          ImageClayblock(
            type: ImageClayblockType.local,
            src: "assets/Red-Ovenbird.jpg",
          ),
          ImageClayblock(
            type: ImageClayblockType.web,
            src: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Flickr_-_Dario_Sanches_-_JO%C3%83O-DE-BARRO_%28Furnarius_rufus%29_%285%29.jpg/250px-Flickr_-_Dario_Sanches_-_JO%C3%83O-DE-BARRO_%28Furnarius_rufus%29_%285%29.jpg",
          ),
        ]),
      ),
    );
  }
}
