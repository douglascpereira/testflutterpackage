library testflutterpackage;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallURL {
  Future<void> _launch() async {
    final String urlString = "https://www.google.com.br";
    if (await canLaunch(urlString)) {
      await launch(urlString);
    }
  }

  Widget callURL(BuildContext context) {
    return Scaffold(
        body: InkWell(
      child: Text("toque aqui"),
      onTap: () => _launch(),
    ));
  }
}
