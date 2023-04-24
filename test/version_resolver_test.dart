import 'package:flutter_test/flutter_test.dart';

import 'android_device_info_fake.dart';
import 'version_resolver_setup.dart';

void main() {
  Map<String, dynamic>? deviceInfo;
  final resolver = setUpAndTearDownVersionResolver(() => deviceInfo);
  test('check if parsing iOS version works', () async {
    deviceInfo = {'systemVersion': "14.3.4"};
    expect(await resolver().getIOSVersion(), 14);
  });
  test('check if parsing non-existent iOS version results in an exception',
      () async {
    deviceInfo = {};
    expect(resolver().getIOSVersion, throwsException);
  });

  test('check if parsing Android SDK version works', () async {
    deviceInfo = fakeAndroidDeviceInfo;
    expect(await resolver().getAndroidSDKVersion(), 16);
  });
}
