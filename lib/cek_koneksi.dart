import 'dart:async';
import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import 'tampil_webview.dart';

class Cek_koneksi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffce93d8),
        // appBar: AppBar(
        //   title: Text("Routing & Navigation"),
        // ),
        body: StreamBuilder(
            stream: Connectivity().onConnectivityChanged,
            builder: (BuildContext ctxt,
                AsyncSnapshot<ConnectivityResult> snapShot) {
              if (!snapShot.hasData) return CircularProgressIndicator();
              var result = snapShot.data;
              switch (result) {
                case ConnectivityResult.none:
                  // print("no net");
                  return Center(child: Text("No Internet Connection!"));
                case ConnectivityResult.mobile:
                case ConnectivityResult.wifi:
                  // print("yes net");
                  return Center(
                    child: Web_page(),
                  );
                    
                default:
                  return Center(child: Text("No Internet Connection!"));
              }
            })
      );
  }
}

