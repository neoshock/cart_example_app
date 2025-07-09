import 'package:flutter/material.dart';

import 'date_reserve_model.dart';

class Pickup {
  String id;
  DateTime date;
  List<DateReserve> dateReserves;

  Pickup({
    required this.id,
    required this.date,
    required this.dateReserves,
  });

  factory Pickup.fromJson(Map<String, dynamic> json) {
    return Pickup(
      id: json['id'],
      date: DateTime.parse(json['date']),
      dateReserves: List<DateReserve>.from(
        json['dateReserves'].map(
          (dateReserve) => DateReserve.fromJson(dateReserve),
        ),
      ),
    );
  }
}
