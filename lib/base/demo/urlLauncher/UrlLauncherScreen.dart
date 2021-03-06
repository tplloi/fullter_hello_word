import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/util/UrlLauncherUtils.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "UrlLauncherScreen",
            () =>
        {
          Navigator.pop(context),
        },
            () =>
        {
          UrlLauncherUtils().launchInBrowser(
              UrlLauncherUtils().getLinkGit("\\lib\\base\\demo\\urlLauncher\\UrlLauncherScreen.dart")),
        },
      ),
      body: Center(
        child: UrlLauncherHomePage(),
      ),
    );
  }
}

class UrlLauncherHomePage extends StatefulWidget {
  UrlLauncherHomePage({
    Key key,
  }) : super(key: key);

  @override
  _UrlLauncherHomePageState createState() => _UrlLauncherHomePageState();
}

class _UrlLauncherHomePageState extends State<UrlLauncherHomePage> {
  Future<void> _launched;
  String _phone = '';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithDomStorage(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableDomStorage: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.cylog.org/headers/';
    return ListView(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(Constants.margin_padding_medium),
              child: TextField(
                  onChanged: (String text) => _phone = text,
                  decoration: const InputDecoration(
                      hintText: 'Input the phone number to launch')),
            ),
            ElevatedButton(
              onPressed: () =>
                  setState(() {
                    _launched = _makePhoneCall('tel:$_phone');
                  }),
              child: const Text('Make phone call'),
            ),
            const Padding(
              padding: EdgeInsets.all(Constants.margin_padding_medium),
              child: Text(toLaunch),
            ),
            ElevatedButton(
              onPressed: () =>
                  setState(() {
                    _launched = _launchInBrowser(toLaunch);
                  }),
              child: const Text('Launch in browser'),
            ),
            const Padding(
                padding: EdgeInsets.all(Constants.margin_padding_medium)),
            ElevatedButton(
              onPressed: () =>
                  setState(() {
                    _launched = _launchInWebViewOrVC(toLaunch);
                  }),
              child: const Text('Launch in app'),
            ),
            const Padding(
                padding: EdgeInsets.all(Constants.margin_padding_small)),
            ElevatedButton(
              onPressed: () =>
                  setState(() {
                    _launched = _launchInWebViewWithJavaScript(toLaunch);
                  }),
              child: const Text('Launch in app(JavaScript ON)'),
            ),
            const Padding(
                padding: EdgeInsets.all(Constants.margin_padding_small)),
            ElevatedButton(
              onPressed: () =>
                  setState(() {
                    _launched = _launchInWebViewWithDomStorage(toLaunch);
                  }),
              child: const Text('Launch in app(DOM storage ON)'),
            ),
            const Padding(
                padding: EdgeInsets.all(Constants.margin_padding_medium)),
            ElevatedButton(
              onPressed: () =>
                  setState(() {
                    _launched = _launchUniversalLinkIos(toLaunch);
                  }),
              child: const Text(
                  'Launch a universal link in a native app, fallback to Safari.(Youtube)'),
            ),
            const Padding(
                padding: EdgeInsets.all(Constants.margin_padding_medium)),
            ElevatedButton(
              onPressed: () =>
                  setState(() {
                    _launched = _launchInWebViewOrVC(toLaunch);
                    Timer(const Duration(seconds: 5), () {
                      print('Closing WebView after 5 seconds...');
                      closeWebView();
                    });
                  }),
              child: const Text('Launch in app + close after 5 seconds'),
            ),
            const Padding(
                padding: EdgeInsets.all(Constants.margin_padding_medium)),
            FutureBuilder<void>(future: _launched, builder: _launchStatus),
          ],
        ),
      ],
    );
  }
}
