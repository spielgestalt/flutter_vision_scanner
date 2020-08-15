import 'package:flutter/material.dart';
import 'package:flutter_vision_scanner/flutter_vision_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _scanner = FlutterVisionScanner();
  String _errorMessage;
  String _filePath;

  //Future<ScannerResult> scannerResult;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(
          children: [
            RaisedButton(
              onPressed: () async {
                try {
                  final scannerResult = await _scanner.scan();
                  setState(() {
                    scannerResult.map(success: (success) {
                      _filePath = success.filePath;
                    }, failure: (failure) {
                      _errorMessage = failure.message;
                    });
                  });
                } catch (e) {
                  setState(() {
                    _errorMessage = '$e';
                  });
                }

                //scannerResult = _scanner.scan();
              },
              child: const Text('Start scan'),
            ),
            if (_errorMessage != null) Text(_errorMessage),
            if (_filePath != null) Text(_filePath)
          ],
        ),
      ),
    );
  }
}
