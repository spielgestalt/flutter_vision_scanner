import 'dart:io';

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
  String _ocrText;
  bool _scanning = false;

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
            if (_scanning == false)
              RaisedButton(
                onPressed: () async {
                  setState(() {
                    _scanning = true;
                  });
                  try {
                    final scannerResult = await _scanner.scan(
                        options: const ScannerOptions(
                            simulatorImagePath: "assets/flutter_de.jpg",
                            mode: ScannerMode.withOcr));
                    setState(() {
                      scannerResult.map(success: (success) {
                        _filePath = success.filePath;
                        _ocrText = success.ocrText;
                      }, failure: (failure) {
                        _errorMessage = failure.message;
                      });
                    });
                  } catch (e) {
                    setState(() {
                      _errorMessage = '$e';
                    });
                  }
                  setState(() {
                    _scanning = false;
                  });
                },
                child: const Text('Start scan'),
              )
            else
              const Center(child: CircularProgressIndicator()),
            if (_ocrText != null) Text(_ocrText),
            if (_filePath != null) Image.file(File(_filePath)),
            if (_errorMessage != null) Text(_errorMessage),
          ],
        ),
      ),
    );
  }
}
