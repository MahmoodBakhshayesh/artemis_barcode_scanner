//package com.abomis.artemis_barcode_scanner;
//
//import android.content.Context;
//
//import androidx.annotation.NonNull;
//import androidx.annotation.Nullable;
//
//import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
//import io.flutter.plugin.common.BinaryMessenger;
//import io.flutter.plugin.common.StandardMessageCodec;
//import io.flutter.plugin.platform.PlatformView;
//import io.flutter.plugin.platform.PlatformViewFactory;
//
//public class BarcodeScannerViewFactory extends PlatformViewFactory {
//    final private ActivityPluginBinding activityPluginBinding;
//    final private BinaryMessenger dartExecutor;
//
//
//    public BarcodeScannerViewFactory(ActivityPluginBinding activityPluginBinding, BinaryMessenger dartExecutor) {
//        super(StandardMessageCodec.INSTANCE);
//        this.activityPluginBinding = activityPluginBinding;
//        this.dartExecutor = dartExecutor;
//    }
//
//    @NonNull
//    public PlatformView create(Context context, int id, @Nullable Object args) {
//        return new BarcodeScannerView(activityPluginBinding,dartExecutor,id);
//    }
//}


package com.abomis.artemis_barcode_scanner;

import android.content.Context;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class BarcodeScannerViewFactory extends PlatformViewFactory {
    final private ActivityPluginBinding activityPluginBinding;
    final private BinaryMessenger dartExecutor;


    public BarcodeScannerViewFactory(ActivityPluginBinding activityPluginBinding, BinaryMessenger dartExecutor) {
        super(StandardMessageCodec.INSTANCE);
        this.activityPluginBinding = activityPluginBinding;
        this.dartExecutor = dartExecutor;
    }

    @NonNull
    public PlatformView create(Context context, int id, @Nullable Object args) {
        return new BarcodeScannerView(activityPluginBinding,dartExecutor,id);
    }
}
