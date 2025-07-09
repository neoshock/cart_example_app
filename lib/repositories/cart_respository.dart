import '../features/cart/models/cart_model.dart';

abstract class CartRepository {
  Future<List<Cart>> getCart();
  Future<void> addToCart(Cart cart);
  Future<void> removeFromCart(Cart cart);
  Future<void> clearCart();
}
