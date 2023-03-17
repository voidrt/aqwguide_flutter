import 'dart:convert';

class PageInfo {
  const PageInfo({
    required this.title,
    required this.categories,
    required this.categoryTopics,
    required this.topicsText,
  });

  final String title;
  final List<String> categories;
  final List<String> categoryTopics;
  final List<String> topicsText;

  factory PageInfo.fromMap(Map<String, dynamic> json) {
    final pageInfo = PageInfo(
      title: json['title'] as String,
      categories: json['categories'] as List<String>,
      categoryTopics: json['categoryTopics'] as List<String>,
      topicsText: json['topicsText'] as List<String>,
    );
    return pageInfo;
  }

  factory PageInfo.fromJson(String source) {
    return PageInfo.fromMap(jsonDecode(source));
  }
}
