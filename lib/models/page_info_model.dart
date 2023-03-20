class PageModel {
  const PageModel({
    required this.title,
    required this.topics,
    required this.subtopics,
  });

  final String title;
  final List<String> topics;
  final List<PageSubtopic> subtopics;

  factory PageModel.fromMap(Map<String, dynamic> json) {
    final pageInfo = PageModel(
      title: json['title'],
      topics: [...json['topics']],
      subtopics: [
        ...List.generate(
          json['subtopics'].length,
          (page) => PageSubtopic.fromMap(
            json['subtopics'][page],
          ),
        ),
      ],
    );
    return pageInfo;
  }
}

class PageSubtopic {
  PageSubtopic({
    required this.subtopicTitle,
    required this.texts,
  });

  final String subtopicTitle;
  final List<String> texts;

  factory PageSubtopic.fromMap(Map<String, dynamic> pageTopic) {
    final topic = PageSubtopic(
      subtopicTitle: pageTopic['title'],
      texts: List.from(pageTopic['texts']),
    );
    return topic;
  }
}
