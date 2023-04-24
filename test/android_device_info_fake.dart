// Copied from https://github.com/fluttercommunity/plus_plugins/blob/main/packages/device_info_plus/device_info_plus/test/model/android_device_info_fake.dart
// Copyright 2017 The Chromium Authors. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
//
//     * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//     * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

const fakeAndroidBuildVersion = <String, dynamic>{
  'sdkInt': 16,
  'baseOS': 'baseOS',
  'previewSdkInt': 30,
  'release': 'release',
  'codename': 'codename',
  'incremental': 'incremental',
  'securityPatch': 'securityPatch',
};

const fakeDisplayMetrics = <String, dynamic>{
  'widthPx': 1080.0,
  'heightPx': 2220.0,
  'xDpi': 530.0859,
  'yDpi': 529.4639,
};

const fakeSupportedAbis = <String>['arm64-v8a', 'x86', 'x86_64'];
const fakeSupported32BitAbis = <String?>['x86 (IA-32)', 'MMX'];
const fakeSupported64BitAbis = <String?>['x86-64', 'MMX', 'SSSE3'];
const fakeSystemFeatures = ['FEATURE_AUDIO_PRO', 'FEATURE_AUDIO_OUTPUT'];

const fakeAndroidDeviceInfo = <String, dynamic>{
  'id': 'id',
  'host': 'host',
  'tags': 'tags',
  'type': 'type',
  'model': 'model',
  'board': 'board',
  'brand': 'Google',
  'device': 'device',
  'product': 'product',
  'display': 'display',
  'hardware': 'hardware',
  'isPhysicalDevice': true,
  'bootloader': 'bootloader',
  'fingerprint': 'fingerprint',
  'manufacturer': 'manufacturer',
  'supportedAbis': fakeSupportedAbis,
  'systemFeatures': fakeSystemFeatures,
  'version': fakeAndroidBuildVersion,
  'supported64BitAbis': fakeSupported64BitAbis,
  'supported32BitAbis': fakeSupported32BitAbis,
  'displayMetrics': fakeDisplayMetrics,
  'serialNumber': 'SERIAL',
};
