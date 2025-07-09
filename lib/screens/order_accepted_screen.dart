import 'package:cart_example_app/features/nav/botton_navigation_widget.dart';
import 'package:flutter/material.dart';

class OrderAcceptedPage extends StatefulWidget {
  const OrderAcceptedPage({super.key});

  @override
  _OrderAcceptedPageState createState() => _OrderAcceptedPageState();
}

class _OrderAcceptedPageState extends State<OrderAcceptedPage> {
  void changeToHomePage() {
    Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) =>
            const ButtonNavigationComponent(selectedIndex: 0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/orderAceptedBg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.5),
            const SizedBox(
              width: 300,
              child: Text(
                'Your Order has been accepted',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
            const SizedBox(
              width: 300,
              child: Text(
                'Your items has been placed and is on its way to being processed',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                changeToHomePage();
              },
              child: const Text(
                'Back to home',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
