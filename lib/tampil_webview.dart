import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Web_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'http://120.89.89.225:8071',
      // url: 'https://kucingtekno.com',
      // hidden: true,
      // appBar: AppBar(title: Text("Webview")),
    );
  }
}