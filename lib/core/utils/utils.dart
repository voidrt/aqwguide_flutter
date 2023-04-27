import 'package:url_launcher/url_launcher.dart';

class Utils {
  static const aqwikiURL =
      'https://94a0bbf5-0b6a-448b-a69b-819e788535ed.mock.pstmn.io/';

  static Future<void> launchUrlInBrowser(Uri link) async {
    if (!await launchUrl(
      link,
      mode: LaunchMode.externalApplication,
    )) throw Exception('Could not launch link');
  }
}
