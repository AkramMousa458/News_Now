import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WebViewScreen> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse('https://flutter.dev'));

  // @override
  // void initState() {
  //   super.initState();
  //   controller = WebViewController()..setJavaScriptMode(JavaScriptMode.disabled)..loadRequest(Uri.parse('https://www.google.com/?hl=ar'));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
