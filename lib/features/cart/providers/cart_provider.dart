import 'dart:math';

import 'package:cart_example_app/models/product_model.dart';
import 'package:flutter/cupertino.dart';

import '../models/cart_model.dart';

class CartProvider with ChangeNotifier {
  List<Cart> _cartList = [];
  List<Cart> get cartList => _cartList;

  double _total = 0.0;
  double get total => _total;

  void addToCart(Product productItem) {
    var random = Random();
    Cart cart = Cart(
      cart_id: random.nextInt(1000 + 1).toString(),
      product: productItem,
      qunatity: 1,
      total_price: productItem.price,
    );
    _cartList.add(cart);
    notifyListeners();
  }

  void removeFromCart(Cart cart) {
    _cartList.remove(cart);
    notifyListeners();
  }

  void clearCart() {
    _cartList.clear();
    notifyListeners();
  }

  void updateCartAdd(Cart cart) {
    int index = _cartList.indexWhere((item) => item.cart_id == cart.cart_id);
    if (index != -1) {
      cart.qunatity = cart.qunatity! + 1;
      debugPrint('index: ${cart.qunatity}');
      cart.total_price = double.parse(
          (cart.product!.price! * cart.qunatity!).toStringAsFixed(2));
      _cartList[index] = cart;
    }
    notifyListeners();
  }

  void updateCartRemove(Cart cart) {
    int index = _cartList.indexWhere((item) => item.cart_id == cart.cart_id);

    if (index != -1) {
      cart.qunatity = cart.qunatity! - 1;
      cart.total_price = double.parse(
          (cart.product!.price! * cart.qunatity!).toStringAsFixed(2));
      _cartList[index] = cart;
      if (_cartList[index].qunatity! < 1) {
        _cartList.remove(cart);
      }
    }
    notifyListeners();
  }

  Cart? getCartForProduct(Product product) {
    try {
      return _cartList.firstWhere((cart) => cart.product == product);
    } catch (e) {
      return null;
    }
  }

  Future<void> updateCartTotal() async {
    _total = 0.0;
    _cartList.forEach((cart) {
      _total += cart.total_price!;
    });
    notifyListeners();
  }

  double getTotal () {
    _total = 0.0;
    _cartList.forEach((cart) {
      _total += cart.total_price!;
    });
    return _total;
  }

  List<Cart> getCartList() {
    return _cartList;
  }
}
