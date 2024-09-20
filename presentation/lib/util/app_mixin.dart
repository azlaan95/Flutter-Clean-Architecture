import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

mixin ResponsiveMixin {
  void initResponsive(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
  }
}

mixin AfterLayoutMixin<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding
        .instance
        .addPostFrameCallback((_) => afterFirstLayout(context));
  }
  Future<void> afterFirstLayout(BuildContext context);
}
