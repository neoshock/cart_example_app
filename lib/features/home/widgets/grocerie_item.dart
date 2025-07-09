import 'package:cart_example_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class GrocerieBox extends StatefulWidget {
  final Product product;
  const GrocerieBox({super.key, required this.product});

  @override
  _GrocerieBoxState createState() => _GrocerieBoxState();
}

class _GrocerieBoxState extends State<GrocerieBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Card(
        margin: EdgeInsets.only(right: 21),
        elevation: 0,
        color: Color(
          (math.Random().nextDouble() * 0xFFFFFF).toInt(),
        ).withValues(alpha: 0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: InkWell(
          splashColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()),
          borderRadius: BorderRadius.circular(18),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: SizedBox(
            width: 240,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(widget.product.image!), width: 60),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 120,
                    child: Text(
                      widget.product.name!,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
