import 'package:first_flutter_app/stories_home.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: MyHomePage());
  }
}

class StoriesData {
  String storyType;
  String storyMessage;
  String storyName;
  String storyUrl;
  String userName;

  StoriesData({
    this.storyType,
    this.storyMessage,
    this.storyName,
    this.storyUrl,
    this.userName,
  });
}
