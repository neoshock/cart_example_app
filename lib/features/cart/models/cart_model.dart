import 'package:cart_example_app/models/product_model.dart';

class Cart {
  String? cart_id;
  int? qunatity;
  double? total_price;
  Product? product;

  Cart({this.cart_id, this.qunatity, this.total_price, this.product});

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      cart_id: json['cart_id'],
      qunatity: json['qunatity'],
      total_price: json['total_price'],
      product: Product.fromJson(json['product']),
    );
  }

  Map<String, dynamic> toJson() => {
        'cart_id': cart_id,
        'qunatity': qunatity,
        'total_price': total_price,
        'product': product,
      };
}
