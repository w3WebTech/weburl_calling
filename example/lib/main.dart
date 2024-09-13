import 'package:flutter/material.dart';
import 'package:weburl_calling/weburl_calling.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final MyWebViewPlugin _webViewPlugin = MyWebViewPlugin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Example URL
            const String url = 'https://flutter.dev';
            // Launch the WebView
            await _webViewPlugin.launchWebView(context, url);
          },
          child: Text('Open WebView'),
        ),
      ),
    );
  }
}
