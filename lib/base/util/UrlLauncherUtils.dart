import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtils {
  String getLinkGit(String path) {
    return "https://github.com/tplloi/fullter_hello_word/tree/master/$path";
  }

  Future<void> launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      print("Could not launch $url");
    }
  }
}
