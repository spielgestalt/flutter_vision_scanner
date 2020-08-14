import 'package:flutter/services.dart';
import 'package:flutter_vision_scanner/src/dtos/scanner_result_dto.dart';
import 'package:flutter_vision_scanner/src/entities/scanner_options.dart';

abstract class IVisionScanner {
  Future<ScannerResultDto> scan(ScannerOptions options);
}

class FlutterVisionScannerPlugin implements IVisionScanner {
  final MethodChannel _methodChannel =
      const MethodChannel('flutter_vision_scanner');
  FlutterVisionScannerPlugin._();
  factory FlutterVisionScannerPlugin.instance() {
    return FlutterVisionScannerPlugin._();
  }

  @override
  Future<ScannerResultDto> scan(ScannerOptions options) async {
    final result = await _methodChannel.invokeMapMethod<String, dynamic>(
        'scan', options.toJson());
    return ScannerResultDto.fromJson(result);
  }
}
