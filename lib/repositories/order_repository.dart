import '../models/order_model.dart';

abstract class OrderRepository {
  Future<List<Order>> getOrders();
  Future<Order> getOrderById(int id);
  Future<Order> addOrder(Order order);
  Future<Order> updateOrder(Order order);
  Future<Order> deleteOrder(int id);
}
