import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher_string.dart';

Future<void> openLink({required String link}) async {
  if (kIsWeb) {
    html.window.open(link, '_blank');
  } else {
    if (await canLaunchUrlString(link)) {
      launchUrlString(link);
    }
  }
}
