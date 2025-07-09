
class Sensitive {
  final String? sensitive_id;
  final String? name;
  final String? quantity;
  final String? deparment_id;
  late bool? isSelected;

  Sensitive({
    this.sensitive_id,
    this.name,
    this.quantity,
    this.deparment_id,
    this.isSelected = false,
  });

  factory Sensitive.fromJson(Map<String, dynamic> json) {
    return Sensitive(
      sensitive_id: json['sensitivie_id'],
      name: json['sensitivie_name'],
      quantity: json['quantity'],
      deparment_id: json['deparment_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sensitivie_id': sensitive_id,
      'sensitivie_name': name,
      'quantity': quantity,
      'deparment_id': deparment_id,
    };
  }
}
