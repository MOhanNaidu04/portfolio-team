import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  static Future<void> openUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> sendEmail(String email) async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (!await launchUrl(uri)) {
      throw Exception('Could not launch email');
    }
  }

  static Future<void> makePhoneCall(String phone) async {
    final Uri uri = Uri(
      scheme: 'tel',
      path: phone,
    );

    if (!await launchUrl(uri)) {
      throw Exception('Could not launch phone');
    }
  }
}