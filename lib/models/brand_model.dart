class Brand {
  final String? brand_id;
  final String? name;
  final int? quantity;
  final String? deparment_id;
  late bool? isSelected;

  Brand({
    this.brand_id,
    this.name,
    this.quantity,
    this.deparment_id,
    this.isSelected = false,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      brand_id: json['brand_id'],
      name: json['brand_name'],
      quantity: json['quantity'],
      deparment_id: json['deparment_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'brand_id': brand_id,
      'brand_name': name,
      'quantity': quantity,
      'deparment_id': deparment_id,
    };
  }
}
