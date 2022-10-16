package com.abomis.artemis_barcode_scanner;

import io.flutter.plugin.common.MethodChannel;

public interface FlutterMethodListener {

    void onBarcodeRead(String barcode);

    void onTakePicture(MethodChannel.Result result, String filePath);
}
