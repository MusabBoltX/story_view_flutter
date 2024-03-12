import 'package:first_flutter_app/story_model.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoriesView extends StatefulWidget {
  final List<Story> stories;
  final String userName, when;

  const StoriesView({
    Key key,
    this.stories,
    this.userName,
    this.when,
  }) : super(key: key);

  @override
  _StoriesViewState createState() => _StoriesViewState();
}

class _StoriesViewState extends State<StoriesView> {
  final storyController = StoryController();

  @override
  void initState() {
    _createStories();
    super.initState();
  }

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ListTile(
          title: Text(widget.userName),
          subtitle: Text(widget.when ?? "24 May, 2024"),
        ),
      ),
      body: StoryView(
        storyItems: storyItems,
        onStoryShow: (storyItem) {
          print("Showing a story: $storyItem");
        },
        onComplete: () {
          print("Completed a cycle");
          Navigator.of(context).pop();
        },
        progressPosition: ProgressPosition.bottom,
        repeat: false,
        controller: storyController,
      ),
    );
  }

  List<StoryItem> storyItems = [];

  _createStories() {
    // Iterate nested widget.stories
    for (var story in widget.stories) {
      // Separates the text stories in storyItems
      if (story.storyType == "text") {
        storyItems.add(
          StoryItem.text(
            title: story.storyMessage,
            backgroundColor: Colors.black87,
          ),
        );
      }

      // Separates the image stories in storyItems
      if (story.storyType == "image") {
        storyItems.add(
          StoryItem.pageImage(
            url: story.storyUrl,
            caption: story.storyName,
            controller: storyController,
          ),
        );
      }
    }
  }
}
