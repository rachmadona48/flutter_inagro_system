import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Web_page extends StatelessWidget {
  DateTime backbuttonpressedTime;
  @override
  Widget build(BuildContext context) {
    // return WebviewScaffold(
    //   url: 'http://120.89.89.225:8071',
    //   // url: 'https://kucingtekno.com',
    //   // hidden: true,
    //   // appBar: AppBar(title: Text("Webview")),
    // );
    
    return Scaffold(
      body: WillPopScope(
        onWillPop: onWillPop2,
        child: WebView(
          initialUrl: 'http://120.89.89.225:8071',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  } 

  Future<bool> onWillPop2() async{
    DateTime currenTime = DateTime.now();

    bool backButton = backbuttonpressedTime == null || 
        currenTime.difference(backbuttonpressedTime) > Duration(seconds: 3);

    if (backButton){
      backbuttonpressedTime = currenTime;
      Fluttertoast.showToast(
        msg: "Tekan lagi untuk keluar",
        backgroundColor: Colors.black,
      );
      return false;
    }
    return true;
  }
  
}