extension RocketUtils on num? {
  /// Convert kg to tons and format as localized string
  String toTonsString(String tonsLabel, {int fractionDigits = 0}) {
    final valueInTons = (this ?? 0) / 1000;
    return '${valueInTons.toStringAsFixed(fractionDigits)} $tonsLabel';
  }
}
