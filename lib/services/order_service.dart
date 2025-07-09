
import 'package:cart_example_app/models/order_model.dart';
import 'package:cart_example_app/repositories/order_repository.dart';

class OrderService implements OrderRepository {
  @override
  Future<Order> addOrder(Order order) {
    
    throw UnimplementedError();
  }

  @override
  Future<Order> deleteOrder(int id) {
    // TODO: implement deleteOrder
    throw UnimplementedError();
  }

  @override
  Future<Order> getOrderById(int id) {
    // TODO: implement getOrderById
    throw UnimplementedError();
  }

  @override
  Future<List<Order>> getOrders() {
    // TODO: implement getOrders
    throw UnimplementedError();
  }

  @override
  Future<Order> updateOrder(Order order) {
    // TODO: implement updateOrder
    throw UnimplementedError();
  }
}
