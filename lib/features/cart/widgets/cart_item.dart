import 'package:cart_example_app/features/cart/models/cart_model.dart';
import 'package:cart_example_app/features/cart/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  final Cart cart;
  const CartItem({Key? key, required this.cart}) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Image(image: AssetImage(widget.cart.product!.image!))),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: SizedBox(
                      width: 180,
                      child: Text(
                        '${widget.cart.product!.name!}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      '${widget.cart.product!.unit}',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          context
                              .read<CartProvider>()
                              .updateCartRemove(widget.cart);
                        },
                        child: const Icon(
                          Icons.remove,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 36,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 9),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          widget.cart.qunatity! < 100
                              ? '${widget.cart.qunatity}'
                              : '+99',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            context
                                .read<CartProvider>()
                                .updateCartAdd(widget.cart);
                          },
                          child: const Icon(
                            Icons.add,
                            color: Colors.green,
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          context
                              .read<CartProvider>()
                              .removeFromCart(widget.cart);
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '\$ ${widget.cart.total_price}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
