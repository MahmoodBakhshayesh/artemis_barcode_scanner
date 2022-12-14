import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'artemis_barcode_scanner_platform_interface.dart';

/// An implementation of [ArtemisBarcodeScannerPlatform] that uses method channels.
class MethodChannelArtemisBarcodeScanner extends ArtemisBarcodeScannerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('artemis_barcode_scanner');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }


  @override
  Future<bool?> getCameraPermission() async {
    final permissionResult = await methodChannel.invokeMethod<bool>('getCameraPermission');
    return permissionResult;
  }

  @override
  Future<void> initCamera({
    required bool hasBarcodeReader,
    required FlashMode initFlash,
    required bool fill,
    required BarcodeType barcodeType,
    required CameraType cameraType,
    required UsageMode mode,
  }) async {
    return methodChannel.invokeMethod<void>('initCamera', {
      "hasBarcodeReader": hasBarcodeReader,
      "initFlashModeID": initFlash.id,
      "modeID": mode.id,
      "fill": fill,
      "barcodeTypeID": barcodeType.id,
      "cameraTypeID": cameraType.id
    });
  }

  @override
  Future<void> pauseCamera() async {
    methodChannel.invokeMethod<void>('pauseCamera');
  }

  @override
  Future<void> resumeCamera() async {
    methodChannel.invokeMethod<void>('resumeCamera');
  }

  @override
  Future<void> dispose() async {
    methodChannel.invokeMethod<void>('dispose');
  }

  @override
  Future<void> changeFlashMode(FlashMode flashMode) async {
    methodChannel.invokeMethod<void>('changeFlashMode', {"flashModeID": flashMode.id});
  }

  @override
  Future<String?> takePicture([String path = ""]) async {
    return methodChannel.invokeMethod<String?>('takePicture', {"path": path});
  }


  @override
  Future<void> changeCameraVisibility(bool visibility) async {
    methodChannel.invokeMethod<void>('changeCameraVisibility', {"visibility": visibility});
  }


  @override
  Future<void> setMethodCallHandler(Future Function(MethodCall call)? handler) async {
    methodChannel.setMethodCallHandler(handler);
  }
}
