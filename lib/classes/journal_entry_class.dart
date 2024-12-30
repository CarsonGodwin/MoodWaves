import 'dart:convert';

import 'package:intl/intl.dart';

class JournalEntry {
  String id;
  String title;
  String body;
  DateTime date; // Assuming this is a DateTime object

  JournalEntry(
      {required this.id,
      required this.title,
      required this.body,
      required this.date});

  static String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd')
        .format(date); // Using DateFormat from the intl package
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'date': formatDate(date), // Format date when converting to JSON
    };
  }

  // Create a JournalEntry instance from a map
  factory JournalEntry.fromJson(Map<String, dynamic> json) {
    try {
      return JournalEntry(
        id: json['id'],
        title: json['title'],
        body: json['body'],
        date: DateTime.parse(json['date'] as String),
      );
    } catch (e) {
      // Handle parsing error, maybe with a default date or by rethrowing a more informative error
      throw FormatException('Invalid date format', json['date']);
    }
  }
}

// Encode the list of JournalEntry objects as a JSON string
String encodeJournalEntries(List<JournalEntry> entries) {
  return jsonEncode(entries.map((entry) => entry.toJson()).toList());
}

// Decode a JSON string to a list of JournalEntry objects
List<JournalEntry> decodeJournalEntries(String jsonString) {
  return (jsonDecode(jsonString) as List<dynamic>)
      .map((item) => JournalEntry.fromJson(item as Map<String, dynamic>))
      .toList();
}
