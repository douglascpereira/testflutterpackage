library testflutterpackage;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallURL extends StatefulWidget {
  CallURL({Key key}) : super(key: key);

  @override
  _CallURLState createState() => _CallURLState();
}

class _CallURLState extends State<CallURL> {
  Future<void> _launch() async {
    final String urlString = "https://www.google.com.br";
    if (await canLaunch(urlString)) {
      await launch(urlString);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Package"),
          ),
          body: Center(
            child: Column(
              children: [
                Text("Tela do package"),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Text("toque aqui"),
                  onTap: () => _launch(),
                ),
              ],
            ),
          )),
    );
  }
}
