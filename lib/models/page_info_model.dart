class PageModel {
  const PageModel({
    required this.title,
    required this.topics,
  });

  final String title;
  final List<PageTopic> topics;

  factory PageModel.fromMap(Map<String, dynamic> json) {
    final pageInfo = PageModel(
      title: json['title'],
      topics: [
        ...List.generate(
          json['topics'].length,
          (index) => PageTopic.fromMap(json['topics'][index]),
        ),
      ],
    );
    return pageInfo;
  }
}

class PageTopic {
  PageTopic({
    required this.title,
    required this.subtopicsList,
  });

  final String title;
  final List<PageSubtopic> subtopicsList;

  factory PageTopic.fromMap(Map<String, dynamic> jsonPageTopic) {
    final title = jsonPageTopic['topicTitle'];
    final subtopics = jsonPageTopic['subtopics'];

    final topic = PageTopic(
      title: title,
      subtopicsList: [
        ...List.generate(
          subtopics.length,
          (index) => PageSubtopic.fromMap(
            subtopics[index],
          ),
        )
      ],
    );

    return topic;
  }
}

class PageSubtopic {
  PageSubtopic({
    required this.subtopicTitle,
    required this.texts,
  });

  final String subtopicTitle;
  final List<String> texts;

  factory PageSubtopic.fromMap(Map<String, dynamic> jsonSubtopic) {
    final pageSubtopic = PageSubtopic(
      subtopicTitle: jsonSubtopic['subtopicTitle'],
      texts: List.from(jsonSubtopic['texts']),
    );
    return pageSubtopic;
  }
}
