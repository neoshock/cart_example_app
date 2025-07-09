import 'package:cart_example_app/features/cart/models/cart_model.dart';
import 'package:cart_example_app/features/cart/providers/cart_provider.dart';
import 'package:cart_example_app/models/product_model.dart';
import 'package:cart_example_app/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductBox extends StatefulWidget {
  final Product product;
  const ProductBox({super.key, required this.product});

  @override
  _ProductBoxState createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  late Cart cart = Cart();
  @override
  Widget build(BuildContext context) {
    var cartList = context.watch<CartProvider>().cartList;
    try {
      cart = context.watch<CartProvider>().getCartForProduct(widget.product)!;
    } catch (e) {
      print(e);
    }
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: Image(image: AssetImage(widget.product.image!)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              TextButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.all(0)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 300),
                      pageBuilder:
                          (
                            BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                          ) {
                            return ProductDetail(product: widget.product);
                          },
                      transitionsBuilder:
                          (
                            BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child,
                          ) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1, 0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            );
                          },
                    ),
                  );
                },
                child: Text(
                  widget.product.name!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${widget.product.price}',
                    style: TextStyle(
                      fontSize: 15,
                      decoration: widget.product.isOffer!
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  widget.product.isOffer!
                      ? Text(
                          '\$${widget.product.offerPrice}',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const SizedBox(),
                  SizedBox(
                    width: 45,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment(0, 0),
                        padding: EdgeInsets.all(0),
                      ),
                      onPressed: () {
                        if (cartList.contains(cart)) {
                          context.read<CartProvider>().removeFromCart(cart);
                        } else {
                          context.read<CartProvider>().addToCart(
                            widget.product,
                          );
                        }
                      },
                      child: cartList.contains(cart)
                          ? const Icon(
                              Icons.delete_outline,
                              color: Colors.white,
                            )
                          : const Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
