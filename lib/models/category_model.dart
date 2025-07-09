import 'dart:math' as math;

class CategoryModel {
  final String? id;
  final String? name;
  final int? quantity;
  final String? department_id;
  late bool? isSelected;

  CategoryModel(
      {this.id,
      this.name,
      this.quantity,
      this.department_id,
      this.isSelected = false});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      quantity: json['quantity'],
      department_id: json['department_id'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'quantity': quantity,
        'department_id': department_id,
      };
}
