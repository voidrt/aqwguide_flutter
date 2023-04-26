import 'package:travel_seila/core/models/sections_and_topics.dart';

class PageModel {
  const PageModel({
    required this.title,
    required this.topics,
  });

  final String title;
  final List<InfoSection> topics;

  factory PageModel.fromMap(Map<String, dynamic> json) {
    final pageInfo = PageModel(
      title: json['title'],
      topics: [
        ...List.generate(
          json['topics'].length,
          (index) => InfoSection.fromMap(json['topics'][index]),
        ),
      ],
    );

    return pageInfo;
  }
}
