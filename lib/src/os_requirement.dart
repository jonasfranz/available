/// OSRequirement defines the operating system version bounds for [available()] checks
class OSRequirement {
  /// Defines the OS version requirements as bounds between [min] and [max].
  /// If [min] or [max] is null it will be ignored while checking
  const OSRequirement({this.min, this.max});

  /// Using this will accept any OS version
  static const anyVersion = OSRequirement();

  /// The lower bound of the operating system
  final int? min;

  /// The upper bound of the operating system
  final int? max;

  /// Checks if [versionNumber] is in bounds of [min] and [max]
  bool inBound(int versionNumber) {
    if (min != null && versionNumber < min!) return false;
    if (max != null && versionNumber > max!) return false;
    return true;
  }
}
