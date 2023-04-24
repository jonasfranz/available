# available

Use the `available` function to limit functionalities of your app to specific iOS and Android versions. 
This could be useful if you're using API specific OS functionalities only available in certain OS versions.

This package is inspired by the [`#available`](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/attributes/#available) attribute in the Swift programming language.

Currently only iOS and Android is supported.

## Usage

```dart
import 'package:available/available.dart';


Future<void> doPlatformSpecificThing() async {
  if(await available(ios: const OSRequirement(min: 14))) {
    // this call will only be executed on iOS >= 14
    doPlatformSpecficiThing();
  }
}
```
