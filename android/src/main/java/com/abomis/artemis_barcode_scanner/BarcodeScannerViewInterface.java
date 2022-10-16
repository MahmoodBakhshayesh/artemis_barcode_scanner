package com.abomis.artemis_barcode_scanner;

import io.flutter.plugin.common.MethodChannel;

public interface BarcodeScannerViewInterface {

    void initCamera( int flashModeID, boolean fill, int barcodeMode, int cameraSelector, int modeID);
    void changeCameraVisibility(boolean isCameraVisible);
    void changeFlashMode(int flashModeID);
    void takePicture(String path, final MethodChannel.Result result);
    void pauseCamera();
    void resumeCamera();
    void dispose();

}
