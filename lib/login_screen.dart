

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(
        child: WebView(
          initialUrl: 'https://bigblocktraders.com/login/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ) ,
    );
  }
}
