import 'dart:html' as html;

class DownloadResume {
  static void download() {
    final anchor = html.AnchorElement(href: '/resume.pdf')
      ..setAttribute('download', 'Raghava_Resume.pdf')
      ..click();
  }
}