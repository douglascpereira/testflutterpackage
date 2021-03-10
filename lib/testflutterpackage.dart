library testflutterpackage;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallURL extends StatelessWidget {
  const CallURL({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: callURL(context),
    );
  }

  Future<void> _launch() async {
    final String urlString = "https://www.google.com.br";
    if (await canLaunch(urlString)) {
      await launch(urlString);
    }
  }

  Widget callURL(BuildContext context) {
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
