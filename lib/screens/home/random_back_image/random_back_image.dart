import 'dart:io';
import 'dart:math';

extension FileExtention on FileSystemEntity {
  String get name {
    return path.split("/").last;
  }
}

Future<String> rndBackgroundImage() async {
  final String randomImage;
  final Random random = Random();
  final dir = Directory('./assets/homescreen_images/');
  final List<String> assetImages = await dir.list().map(
    (event) {
      return event.name;
    },
  ).toList();

  randomImage = assetImages[random.nextInt(assetImages.length)];

  return randomImage;
}
