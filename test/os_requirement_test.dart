import 'package:available/available.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('check if in bound check works', () {
    const OSRequirement onlyMin = OSRequirement(min: 10);
    const OSRequirement onlyMax = OSRequirement(max: 20);
    const OSRequirement both = OSRequirement(min: 10, max: 20);
    const OSRequirement nothing = OSRequirement();

    expect(onlyMin.inBound(10), isTrue);
    expect(onlyMin.inBound(12), isTrue);
    expect(onlyMin.inBound(9), isFalse);

    expect(onlyMax.inBound(20), isTrue);
    expect(onlyMax.inBound(10), isTrue);
    expect(onlyMax.inBound(22), isFalse);

    expect(both.inBound(10), isTrue);
    expect(both.inBound(12), isTrue);
    expect(both.inBound(9), isFalse);
    expect(both.inBound(23), isFalse);

    expect(nothing.inBound(10), isTrue);
    expect(nothing.inBound(12), isTrue);
    expect(nothing.inBound(9), isTrue);
    expect(nothing.inBound(23), isTrue);
  });
}
