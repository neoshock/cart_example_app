class Filter {
  final String? filter_id;
  final String? name;
  final int? quantity;
  final String deparment_id;
  late bool? isSelected;

  Filter({
    this.filter_id,
    this.name,
    this.quantity,
    required this.deparment_id,
    this.isSelected = false,
  });

  factory Filter.fromJson(Map<String, dynamic> json) {
    return Filter(
      filter_id: json['filter_id'],
      name: json['filter_name'],
      quantity: json['quantity'],
      deparment_id: json['deparment_id'],
    );
  }
}
