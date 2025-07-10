import 'dart:math';

import 'package:cart_example_app/features/cart/models/cart_model.dart';

class Order {
  String? id;
  String? status;
  DateTime? orderTime;
  double? subTotal;
  double? tax;
  double? estimatedTotal;
  double? discount;
  List<Cart>? carts;

  Order({
    required this.id,
    required this.status,
    required this.orderTime,
    required this.subTotal,
    required this.tax,
    required this.estimatedTotal,
    required this.carts,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      status: json['title'],
      orderTime: DateTime.parse(json['orderTime']),
      subTotal: json['subTotal'],
      tax: json['tax'],
      estimatedTotal: json['estimatedTotal'],
      carts: List<Cart>.from(json['carts'].map((x) => Cart.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': status,
        'orderTime': orderTime!.toIso8601String(),
        'subTotal': subTotal,
        'tax': tax,
        'estimatedTotal': estimatedTotal,
        'carts': List<dynamic>.from(carts!.map((x) => x.toJson())),
      };
}
