import 'package:cart_example_app/features/cart/models/cart_model.dart';
import 'package:cart_example_app/features/cart/providers/cart_provider.dart';
import 'package:cart_example_app/models/order_model.dart';
import 'package:cart_example_app/providers/order_provider.dart';
import 'package:cart_example_app/screens/order_accepted_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CheckoutModal extends StatefulWidget {
  final List<Cart> carts;

  const CheckoutModal({super.key, required this.carts});
  @override
  _CheckoutModalState createState() => _CheckoutModalState();
}

class _CheckoutModalState extends State<CheckoutModal> {
  late Order order;

  String formatOrderTime(DateTime orderTime) {
    return '${orderTime.month}/${orderTime.day}/${orderTime.year} ${orderTime.hour}:${orderTime.minute}';
  }

  //Convert a date to a string example Sat, Feb 20
  String convertDateToString(DateTime date) {
    return DateFormat('EEE, MMM d').format(date).toString();
  }

  String convertTimeToString(DateTime date) {
    return DateFormat('h:mm a').format(date).toString();
  }

  @override
  void initState() {
    super.initState();
    debugPrint('initState');
    order = Order(
      id: '123',
      status: 'Pending',
      orderTime: DateTime.now(),
      subTotal: context.read<CartProvider>().getTotal(),
      tax: 0,
      estimatedTotal: 0,
      carts: widget.carts,
    );
    order.pickupFee = 4.95;
    order.tax = order.subTotal! * 0.07;
    order.estimatedTotal = order.subTotal! + order.tax! + order.pickupFee!;
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Checkout',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    minVerticalPadding: 0,
                    minLeadingWidth: 0,
                    contentPadding: const EdgeInsets.all(0),
                    iconColor: Colors.black,
                    onTap: () {},
                    title: const Text(
                      'Items in your order',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 180,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            order.carts!.length.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 15),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1),
                  ListTile(
                    minVerticalPadding: 0,
                    minLeadingWidth: 0,
                    contentPadding: const EdgeInsets.all(0),
                    iconColor: Colors.black,
                    onTap: () {},
                    title: const Text(
                      'Subtotal',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 150,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            '\$${order.subTotal!.toStringAsFixed(2)}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1),
                  ListTile(
                    minVerticalPadding: 0,
                    minLeadingWidth: 0,
                    contentPadding: const EdgeInsets.all(0),
                    iconColor: Colors.black,
                    onTap: () {},
                    title: const Text(
                      'Pickup Fee',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 150,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            '\$${order.pickupFee!.toStringAsFixed(2)}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1),
                  ListTile(
                    minVerticalPadding: 0,
                    minLeadingWidth: 0,
                    contentPadding: const EdgeInsets.all(0),
                    iconColor: Colors.black,
                    onTap: () {},
                    title: const Text(
                      'Tax',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 150,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            '\$${order.tax!.toStringAsFixed(2)}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1),
                  ListTile(
                    minVerticalPadding: 0,
                    minLeadingWidth: 0,
                    contentPadding: const EdgeInsets.all(0),
                    iconColor: Colors.black,
                    onTap: () {},
                    title: const Text(
                      'Estimated Total',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 150,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            '\$${order.estimatedTotal!.toStringAsFixed(2)}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1),
                  const SizedBox(height: 30),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      'By placing an order you agree to our Terms And Conditions',
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(360, 56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text('Submit Order'),
                        onPressed: () {
                          context.read<OrderProvider>().addOrder(order);
                          context.read<CartProvider>().clearCart();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderAcceptedPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
