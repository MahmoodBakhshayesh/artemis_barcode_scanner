import Flutter
import UIKit

public class SwiftArtemisBarcodeScannerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "artemis_barcode_scanner", binaryMessenger: registrar.messenger())
    let instance = SwiftArtemisBarcodeScannerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)

    let factory = BarcodeScannerViewFactory(messenger: registrar.messenger())
    registrar.register(factory, withId: "<platform-view-type>")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
