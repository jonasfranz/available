import 'package:available/src/version_resolver.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

VersionResolver Function() setUpAndTearDownVersionResolver(
  Map<String, dynamic>? Function() deviceInfo,
) {
  const MethodChannel channel =
      MethodChannel('dev.fluttercommunity.plus/device_info');
  late VersionResolver resolver;

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    TestDefaultBinaryMessengerBinding.instance?.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (call) async => deviceInfo(),
    );
    resolver = VersionResolver(DeviceInfoPlugin());
  });
  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance?.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });
  return () => resolver;
}
