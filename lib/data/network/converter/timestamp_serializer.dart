import 'package:freezed_annotation/freezed_annotation.dart';

/// A custom [JsonConverter] that handles converting between a `DateTime?`
/// and either a JSON string (ISO 8601) or an integer (Unix timestamp in
/// milliseconds).
///
/// - When deserializing (`fromJson`), it supports both:
///   - ISO 8601 formatted [String]s, e.g., `"2023-07-30T12:34:56Z"`
///   - [int] values representing Unix timestamps in milliseconds since epoch
///
/// - When serializing (`toJson`), it converts the [DateTime] to an ISO 8601
/// string in UTC.
class TimestampSerializer implements JsonConverter<DateTime?, dynamic> {
  /// Creates a constant [TimestampSerializer].
  const TimestampSerializer();

  /// Converts a JSON value into a [DateTime].
  ///
  /// Supports:
  /// - [String] input in ISO 8601 format.
  /// - [int] input representing milliseconds since epoch.
  ///
  /// Returns `null` if the input is neither a [String] nor an [int],
  /// or if parsing fails.
  @override
  DateTime? fromJson(dynamic json) {
    if (json is String) {
      return DateTime.tryParse(json);
    } else if (json is int) {
      return DateTime.fromMillisecondsSinceEpoch(json, isUtc: true);
    }
    return null;
  }

  /// Converts a [DateTime] to a JSON value.
  ///
  /// The output is an ISO 8601 [String] in UTC, or `null` if [date] is `null`.
  @override
  dynamic toJson(DateTime? date) => date?.toUtc().toIso8601String();
}
