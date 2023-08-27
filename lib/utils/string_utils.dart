/// Extension on [String] to provide formatting functions for names.
extension DateFormatExtension on String {
  /// Returns a formatted version of the name by extracting the first letters
  /// of the provided words. If the string is empty, returns 'N/A'.
  ///
  /// For example:
  ///
  /// ```dart
  /// final formattedName = 'John Doe'.getFormattedName();
  /// print(formattedName); // Output: 'JD'
  /// ```
  ///
  /// If the name consists of only one word, the method returns the first
  /// letter of that word.
  ///
  /// ```dart
  /// final formattedName = 'Alice'.getFormattedName();
  /// print(formattedName); // Output: 'A'
  /// ```
  ///
  /// If the input string is empty, the method returns 'N/A'.
  ///
  /// ```dart
  /// final formattedName = ''.getFormattedName();
  /// print(formattedName); // Output: 'N/A'
  /// ```
  String getFormattedName() {
    if (isEmpty) {
      return 'N/A';
    }

    final words = trim().split(RegExp(r'\s+'));
    final initials = words.map((word) => word.isNotEmpty ? word[0] : '').join();
    return initials.toUpperCase();
  }
}
