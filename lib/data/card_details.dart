import 'package:flutter/material.dart';
import 'package:mood_waves/model/card_model.dart';

class CardDetails {
  final cardData = const [
    CardModel(
        icon: Icons.event, value: "Mental Health Event", title: "Next Event"),
    CardModel(
        icon: Icons.assignment,
        value: "Write about life",
        title: "Journal Prompt"),
    CardModel(
        icon: Icons.emoji_events,
        value: "Gold Level",
        title: "Your Reward Level"),
    CardModel(icon: Icons.calendar_month, value: "4", title: "Log Streak"),
    CardModel(icon: Icons.face_2, value: "12", title: "Mood"),
  ];
}