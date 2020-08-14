import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_vision_scanner/src/entities/scanner_options.dart';
import 'package:flutter_vision_scanner/src/entities/scanner_result.dart';

import 'src/flutter_vision_scanner_plugin.dart';

class FlutterVisionScanner {
  final IVisionScanner _scanner = FlutterVisionScannerPlugin.instance();

  static const MethodChannel _channel = MethodChannel('flutter_vision_scanner');

  Future<ScannerResult> scan(
      {ScannerOptions options =
          const ScannerOptions(mode: ScannerMode.withOcr)}) async {
    final result = await _scanner.scan(options);
    return ScannerResult(filePath: result.filePath, ocrResults: result.ocrText);
  }

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
