import 'package:first_flutter_app/story_model.dart';
import 'package:first_flutter_app/story_view.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<StoryModel> stories = [
    StoryModel(
      userId: "001",
      userName: "ig_bolt",
      stories: [
        Story(
          storyMessage: "Hello",
          storyName: "Greeting",
          storyType: "text",
        ),
        Story(
          storyMessage: "Hello",
          storyName: "Greeting",
          storyType: "text",
        ),
        Story(
          storyUrl: "https://bragchamp.com/uploads/stories/doctor-taking-care-senior-woman-home.jpg",
          storyName: "Kindness",
          storyType: "image",
        ),
        Story(
          storyUrl: "https://bragchamp.com/uploads/stories/doctor-taking-care-senior-woman-home.jpg",
          storyName: "Kindness",
          storyType: "image",
        ),
      ],
    ),
    StoryModel(
      userId: "002",
      userName: "ig_pubg",
      stories: [
        Story(
          storyUrl: "https://www.hollywoodreporter.com/wp-content/uploads/2019/10/pubg_mobile.jpg?w=1296",
          storyName: "Attack",
          storyType: "image",
        ),
        Story(
          storyUrl: "https://cdn.vox-cdn.com/uploads/chorus_image/image/72287373/NSBY1rKN.0.jpg",
          storyName: "Chorus",
          storyType: "image",
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Stories'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => StoriesView(
                          stories: stories[index].stories,
                          userName: stories[index].userName,
                        )),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.black12,
                      backgroundImage: NetworkImage('https://cdn.iconscout.com/icon/free/png-256/free-instagram-story-7515674-6147294.png'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}