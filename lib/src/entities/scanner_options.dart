import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanner_options.freezed.dart';
part 'scanner_options.g.dart';

enum ScannerMode { withOcr, withoutOcr }

@freezed
abstract class ScannerOptions with _$ScannerOptions {
  const factory ScannerOptions(
      {@required ScannerMode mode,
      String simulatorImagePath}) = _ScannerOptions;
  factory ScannerOptions.fromJson(Map<String, dynamic> json) =>
      _$ScannerOptionsFromJson(json);
}
