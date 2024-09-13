library weburl_calling;

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebViewPlugin {
  Future<void> launchWebView(BuildContext context, String url) async {
 
    final webView = WebViewWidget(
      controller: WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse(url)),
    );

    // Show the WebView as a dialog
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('WebView'),
        content: webView,
      ),
    );
  }
}