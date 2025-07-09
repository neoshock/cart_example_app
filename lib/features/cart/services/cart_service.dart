import 'package:cart_example_app/features/cart/models/cart_model.dart';
import 'package:cart_example_app/repositories/cart_respository.dart';

class CartService implements CartRepository {
  @override
  Future<void> addToCart(Cart cart) {
    // TODO: implement addToCar
    throw UnimplementedError();
  }

  @override
  Future<void> clearCart() {
    // TODO: implement clearCart
    throw UnimplementedError();
  }

  @override
  Future<List<Cart>> getCart() {
    // TODO: implement getCart
    throw UnimplementedError();
  }

  @override
  Future<void> removeFromCart(Cart cart) {
    // TODO: implement removeFromCart
    throw UnimplementedError();
  }
}
