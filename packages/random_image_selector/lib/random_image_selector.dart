library random_image_selector;

import 'dart:io';
import 'dart:math';

extension FileExtention on FileSystemEntity {
  String get name {
    return path.split("/").last;
  }
}

Future<String> getRandomImage(String directoryPath) async {
  final String randomImage;
  final Random random = Random();
  final dir = Directory(directoryPath);
  final List<String> assetImages = await dir.list().map(
    (file) {
      return file.name;
    },
  ).toList();

  randomImage = assetImages[random.nextInt(assetImages.length)];

  return randomImage;
}
