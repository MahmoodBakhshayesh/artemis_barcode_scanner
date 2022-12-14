#import "ArtemisBarcodeScannerPlugin.h"
#if __has_include(<artemis_barcode_scanner/artemis_barcode_scanner-Swift.h>)
#import <artemis_barcode_scanner/artemis_barcode_scanner-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "artemis_barcode_scanner-Swift.h"
#endif

@implementation ArtemisBarcodeScannerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftArtemisBarcodeScannerPlugin registerWithRegistrar:registrar];
}
@end
