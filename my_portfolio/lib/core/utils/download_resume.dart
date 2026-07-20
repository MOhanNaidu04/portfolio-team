// ignore: deprecated_member_use
import 'dart:html' as html;

class DownloadResume {
  static void download() {
    html.AnchorElement(href: '/resume.pdf')
      ..setAttribute('download', 'Mohan.pdf')
      ..click();
  }
}