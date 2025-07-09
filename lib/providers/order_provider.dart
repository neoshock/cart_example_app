import 'package:cart_example_app/models/order_model.dart';
import 'package:flutter/cupertino.dart';

class OrderProvider with ChangeNotifier {
  final List<Order> _orders = [];
  List<Order> get orders => _orders;

  void addOrder(Order order) {
    _orders.add(order);
    for (var element in orders) {
      debugPrint('order: ${element.toJson()}');
    }
    notifyListeners();
  }
}
