#import "FlutterVisionScannerPlugin.h"
#if __has_include(<flutter_vision_scanner/flutter_vision_scanner-Swift.h>)
#import <flutter_vision_scanner/flutter_vision_scanner-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_vision_scanner-Swift.h"
#endif

@implementation FlutterVisionScannerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterVisionScannerPlugin registerWithRegistrar:registrar];
}
@end
