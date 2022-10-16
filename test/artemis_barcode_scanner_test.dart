// import 'package:flutter_test/flutter_test.dart';
// import 'package:artemis_barcode_scanner/artemis_barcode_scanner.dart';
// import 'package:artemis_barcode_scanner/artemis_barcode_scanner_platform_interface.dart';
// import 'package:artemis_barcode_scanner/artemis_barcode_scanner_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockArtemisBarcodeScannerPlatform
//     with MockPlatformInterfaceMixin
//     implements ArtemisBarcodeScannerPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final ArtemisBarcodeScannerPlatform initialPlatform = ArtemisBarcodeScannerPlatform.instance;
//
//   test('$MethodChannelArtemisBarcodeScanner is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelArtemisBarcodeScanner>());
//   });
//
//   test('getPlatformVersion', () async {
//     ArtemisBarcodeScanner artemisBarcodeScannerPlugin = ArtemisBarcodeScanner();
//     MockArtemisBarcodeScannerPlatform fakePlatform = MockArtemisBarcodeScannerPlatform();
//     ArtemisBarcodeScannerPlatform.instance = fakePlatform;
//
//     expect(await artemisBarcodeScannerPlugin.getPlatformVersion(), '42');
//   });
// }
