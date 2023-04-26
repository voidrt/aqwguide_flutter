class InfoSection {
  InfoSection({
    required this.title,
    required this.topics,
  });

  final String title;
  final List<Topic> topics;

  factory InfoSection.fromMap(Map<String, dynamic> jsonInfoSection) {
    final title = jsonInfoSection['topicTitle'];
    final topics = jsonInfoSection['subtopics'];

    final topic = InfoSection(
      title: title,
      topics: [
        ...List.generate(
          topics.length,
          (index) => Topic.fromMap(
            topics[index],
          ),
        )
      ],
    );

    return topic;
  }
}

class Topic {
  Topic({
    required this.topicTitle,
    required this.texts,
  });

  final String topicTitle;
  final List<String> texts;

  factory Topic.fromMap(Map<String, dynamic> jsontopic) {
    final topic = Topic(
      topicTitle: jsontopic['subtopicTitle'],
      texts: List.from(jsontopic['texts']),
    );
    return topic;
  }
}
