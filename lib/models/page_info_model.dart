import 'dart:convert';

class PageModel {
  const PageModel({
    required this.title,
    required this.categories,
    required this.categoryTopics,
    required this.topicsText,
  });

  final String title;
  final List<String> categories;
  final List<String> categoryTopics;
  final List<String> topicsText;

  factory PageModel.fromMap(Map<String, dynamic> json) {
    final pageInfo = PageModel(
      title: json['title'] as String,
      categories: json['categories'] as List<String>,
      categoryTopics: json['categoryTopics'] as List<String>,
      topicsText: json['topicsText'] as List<String>,
    );
    return pageInfo;
  }

  factory PageModel.fromJson(String source) {
    return PageModel.fromMap(jsonDecode(source));
  }
}
