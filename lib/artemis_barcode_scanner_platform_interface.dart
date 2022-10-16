import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'artemis_barcode_scanner_method_channel.dart';

abstract class ArtemisBarcodeScannerPlatform extends PlatformInterface {
  /// Constructs a ArtemisBarcodeScannerPlatform.
  ArtemisBarcodeScannerPlatform() : super(token: _token);

  static final Object _token = Object();

  static ArtemisBarcodeScannerPlatform _instance = MethodChannelArtemisBarcodeScanner();

  /// The default instance of [ArtemisBarcodeScannerPlatform] to use.
  ///
  /// Defaults to [MethodChannelArtemisCameraKit].
  static ArtemisBarcodeScannerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ArtemisBarcodeScannerPlatform] when
  /// they register themselves.
  static set instance(ArtemisBarcodeScannerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> getCameraPermission() {
    throw UnimplementedError('cameraPermission() has not been implemented.');
  }

  Future<void> initCamera({
    required bool hasBarcodeReader,
    required FlashMode initFlash,
    required bool fill,
    required BarcodeType barcodeType,
    required CameraType cameraType,
    required UsageMode mode,
  }) {
    throw UnimplementedError('initCamera() has not been implemented.');
  }

  Future<void> pauseCamera() {
    throw UnimplementedError('pauseCamera() has not been implemented.');
  }

  Future<void> resumeCamera() {
    throw UnimplementedError('resumeCamera() has not been implemented.');
  }

  Future<void> changeFlashMode(FlashMode flashMode) {
    throw UnimplementedError('changeFlashMode() has not been implemented.');
  }

  Future<String?> takePicture([String path = ""]) {
    throw UnimplementedError('takePicture() has not been implemented.');
  }

  Future<void> dispose() {
    throw UnimplementedError('dispose() has not been implemented.');
  }

  Future<void> changeCameraVisibility(bool visibility) {
    throw UnimplementedError('changeCameraVisibility() has not been implemented!.');
  }

  Future<void> setMethodCallHandler(Future<dynamic> Function(MethodCall call)? handler) {
    throw UnimplementedError('setMethodCallHandler() has not been implemented.');
  }
}

enum BarcodeType { allFormats, code128, code39, cod93, codabar, dataMatrix, ean13, ean8, itf, qrCode, upcA, upcE, pdf417, aztec }

enum CameraType { back, front }

enum FlashMode { on, off, auto }

enum UsageMode { camera, barcodeScanner, ocrReader }

extension FlashModeDetails on FlashMode {
  int get id {
    switch (this) {
      case FlashMode.on:
        return 1;
      case FlashMode.off:
        return 0;
      case FlashMode.auto:
        return 2;
    }
  }
}

extension CameraTypeDetails on CameraType {
  int get id {
    switch (this) {
      case CameraType.back:
        return 0;
      case CameraType.front:
        return 1;
    }
  }
}

extension UsageModeDetails on UsageMode {
  int get id {
    switch (this) {
      case UsageMode.camera:
        return 0;
      case UsageMode.barcodeScanner:
        return 1;
      case UsageMode.ocrReader:
        return 2;
    }
  }
}

extension BarcodeTypeDetails on BarcodeType {
  int get id {
    switch (this) {
      case BarcodeType.allFormats:
        return 0;
      case BarcodeType.code128:
        return 1;
      case BarcodeType.code39:
        return 2;
      case BarcodeType.cod93:
        return 4;
      case BarcodeType.codabar:
        return 8;
      case BarcodeType.dataMatrix:
        return 16;
      case BarcodeType.ean13:
        return 32;
      case BarcodeType.ean8:
        return 64;
      case BarcodeType.itf:
        return 128;
      case BarcodeType.qrCode:
        return 256;
      case BarcodeType.upcA:
        return 512;
      case BarcodeType.upcE:
        return 1024;
      case BarcodeType.pdf417:
        return 2048;
      case BarcodeType.aztec:
        return 4096;
    }
  }

  String get name {
    switch (this) {
      case BarcodeType.allFormats:
        return "All";
      case BarcodeType.code128:
        return "Code128";
      case BarcodeType.code39:
        return "Code39";
      case BarcodeType.cod93:
        return "Code93";
      case BarcodeType.codabar:
        return "CodaBar";
      case BarcodeType.dataMatrix:
        return "DataMatrix";
      case BarcodeType.ean13:
        return "Ean13";
      case BarcodeType.ean8:
        return "Ean8";
      case BarcodeType.itf:
        return "Itf";
      case BarcodeType.qrCode:
        return "QrCode";
      case BarcodeType.upcA:
        return "UpcA";
      case BarcodeType.upcE:
        return "UpcE";
      case BarcodeType.pdf417:
        return "Pdf417";
      case BarcodeType.aztec:
        return "Aztec";
    }
  }
}
