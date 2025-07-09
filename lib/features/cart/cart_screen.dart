import 'package:cart_example_app/features/cart/models/cart_model.dart';
import 'package:cart_example_app/features/cart/widgets/cart_item.dart';
import 'package:cart_example_app/features/checkout/widgets/checkout_modal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/cart_provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    List<Cart> cartList = context.watch<CartProvider>().cartList;

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height - 45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'My Cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) =>
                    CartItem(cart: cartList[index]),
                itemCount: cartList.length,
              ),
            ),
            SizedBox(
              width: 360,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(360, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Go to Checkout',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 45),
                    Container(
                      width: 72,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 52, 207, 145),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Center(
                        child: Text(
                          '\$ ${context.read<CartProvider>().getTotal().toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    context: context,
                    builder: (context) => CheckoutModal(carts: cartList),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
