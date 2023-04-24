import 'package:available/available.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'android_device_info_fake.dart';
import 'version_resolver_setup.dart';

void main() {
  Map<String, dynamic>? deviceInfo;
  setUpAndTearDownVersionResolver(() => deviceInfo);

  test('check if available works without any attributes', () async {
    expect(await available(), isFalse);
  });
  test('check if available works on android', () async {
    deviceInfo = fakeAndroidDeviceInfo;
    // current version is 16
    expect(await available(android: const OSRequirement(min: 20)), isFalse);
    expect(await available(android: const OSRequirement(min: 16)), isTrue);
    expect(await available(iOS: const OSRequirement(min: 16)), isFalse);
    expect(
      await available(
        android: const OSRequirement(min: 20),
        iOS: const OSRequirement(min: 16),
      ),
      isFalse,
    );
    expect(
      await available(
        android: const OSRequirement(min: 16),
        iOS: const OSRequirement(min: 16),
      ),
      isTrue,
    );
  });
  test('check if available works on iOS', () async {
    deviceInfo = {'systemVersion': "14.3.4"};
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    // current version is 14
    expect(await available(iOS: const OSRequirement(min: 20)), isFalse);
    expect(await available(iOS: const OSRequirement(min: 14)), isTrue);
    expect(await available(android: const OSRequirement(min: 16)), isFalse);
    expect(
      await available(
        iOS: const OSRequirement(min: 20),
        android: const OSRequirement(min: 20),
      ),
      isFalse,
    );
    expect(
      await available(
        iOS: const OSRequirement(min: 14),
        android: const OSRequirement(min: 20),
      ),
      isTrue,
    );
  });
  test('check if available throws exception on unknown platform', () async {
    deviceInfo = {'systemVersion': "14.3.4"};
    debugDefaultTargetPlatformOverride = TargetPlatform.linux;
    expect(
      () => available(iOS: const OSRequirement(min: 20)),
      throwsUnsupportedError,
    );
  });
}
