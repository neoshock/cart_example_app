class Aisle {
  final String? aisle_id;
  final String? name;
  final int? quantity;
  final String? deparment_id;
  late bool? isSelected;

  Aisle({
    this.aisle_id,
    this.name,
    this.quantity,
    this.deparment_id,
    this.isSelected = false,
  });

  factory Aisle.fromJson(Map<String, dynamic> json) {
    return Aisle(
      aisle_id: json['aisle_id'],
      name: json['aisle_name'],
      quantity: json['quantity'],
      deparment_id: json['deparment_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'aisle_id': aisle_id,
      'aisle_name': name,
      'quantity': quantity,
      'deparment_id': deparment_id,
    };
  }
}
