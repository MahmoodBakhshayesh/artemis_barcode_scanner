
import 'package:flutter/services.dart';

import 'artemis_barcode_scanner_platform_interface.dart';

class ArtemisBarcodeScanner {
  Future<String?> getPlatformVersion() {
    return ArtemisBarcodeScannerPlatform.instance.getPlatformVersion();
  }

  Future<bool?> getCameraPermission() async {
    return ArtemisBarcodeScannerPlatform.instance.getCameraPermission();
  }

  Future<void> initCamera({
    required bool hasBarcodeReader,
    FlashMode initFlash = FlashMode.auto,
    bool fill = true,
    BarcodeType barcodeType = BarcodeType.allFormats,
    CameraType cameraType = CameraType.back,
    UsageMode mode = UsageMode.barcodeScanner,
  }) {
    return ArtemisBarcodeScannerPlatform.instance.initCamera(
        mode: mode,
        hasBarcodeReader: hasBarcodeReader,
        initFlash: initFlash,
        fill: fill,
        barcodeType: barcodeType,
        cameraType: cameraType);
  }

  Future<void> changeFlashMode({required FlashMode mode}) {
    return ArtemisBarcodeScannerPlatform.instance.changeFlashMode(mode);
  }

  Future<void> changeCameraVisibility({required bool visibility}) {
    return ArtemisBarcodeScannerPlatform.instance.changeCameraVisibility(visibility);
  }

  Future<void> pauseCamera() {
    return ArtemisBarcodeScannerPlatform.instance.pauseCamera();
  }

  Future<void> resumeCamera() {
    return ArtemisBarcodeScannerPlatform.instance.resumeCamera();
  }

  Future<String?> takePicture([String path = ""]) {
    return ArtemisBarcodeScannerPlatform.instance.takePicture(path);
  }


  Future<void> setMethodCallHandler({required Future<dynamic> Function(MethodCall call)? handler}) {
    return ArtemisBarcodeScannerPlatform.instance.setMethodCallHandler(handler);
  }
}
