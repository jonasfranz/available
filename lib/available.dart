library available;

import 'package:available/src/os_requirement.dart';
import 'package:available/src/version_resolver.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

export 'src/os_requirement.dart';

/// Checks if the operating system version is between the defined bounds
/// If [iOS] or [android] is null it will always return false on the corresponding platform
/// Throws [UnsupportedError] if an unsupported platform is used
Future<bool> available({
  OSRequirement? iOS,
  OSRequirement? android,
}) async {
  final VersionResolver resolver = VersionResolver(DeviceInfoPlugin());
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      if (android == null) return false;
      return android.inBound(await resolver.getAndroidSDKVersion());
    case TargetPlatform.iOS:
      if (iOS == null) return false;
      return iOS.inBound(await resolver.getIOSVersion());
    default:
      throw UnsupportedError('unsupported platform');
  }
}
