library weburl_calling;
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPlugin extends StatelessWidget {
  final String url;

  WebViewPlugin({required this.url});

  @override
  Widget build(BuildContext context) {
    // Initialize the WebViewController
    final WebViewController _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));

    return Scaffold(
      
      body: WebViewWidget(controller: _controller),
    );
  }
}