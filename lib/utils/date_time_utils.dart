extension DateFormatExtension on DateTime {
  String toFormattedString() {
    final monthNames = [
      '',
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];

    return '${monthNames[month]} ${day.toString().padLeft(2, '0')}';
  }
}
