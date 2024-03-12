
class StoryModel {
  String userId;
  String userName;
  dynamic coffeeUsername;
  List<Story> stories;

  StoryModel({
    this.userId,
    this.userName,
    this.coffeeUsername,
    this.stories,
  });
}

class Story {
  String id;
  String storyType;
  String storyMessage;
  String storyName;
  String storyUrl;
  DateTime createTime;

  Story({
    this.id,
    this.storyType,
    this.storyMessage,
    this.storyName,
    this.storyUrl,
    this.createTime,
  });
}
