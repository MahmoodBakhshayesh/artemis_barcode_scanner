import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:artemis_barcode_scanner/artemis_barcode_scanner_method_channel.dart';

void main() {
  MethodChannelArtemisBarcodeScanner platform = MethodChannelArtemisBarcodeScanner();
  const MethodChannel channel = MethodChannel('artemis_barcode_scanner');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
