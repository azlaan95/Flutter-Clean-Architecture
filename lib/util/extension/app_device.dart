import 'package:flutter/cupertino.dart';

class AppDevice {
  /// Detect the position of specific Widget
  static Offset detectWidgetPosition({required GlobalKey globalKey}) {
    RenderBox box = globalKey.currentContext?.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero);
    return position;
  }
}

extension AppDeviceExtension<T extends StatefulWidget> on State<T> {
  /// Detect the device that has notch
  bool isDeviceHasNotch() {
    return MediaQuery.of(context).viewPadding.bottom > 0;
  }
}