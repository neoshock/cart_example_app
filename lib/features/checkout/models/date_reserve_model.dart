class DateReserve {
  String id;
  DateTime startDate;
  DateTime endDate;
  bool reserved = false;

  DateReserve({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.reserved,
  });

  factory DateReserve.fromJson(Map<String, dynamic> json) {
    return DateReserve(
      id: json['id'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
      reserved: json['reserved'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'reserved': reserved,
    };
  }
}
