import 'package:cart_example_app/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final Product product;

  const ProductDetail({super.key, required this.product});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: EdgeInsets.all(30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(360, 56),
              backgroundColor: Color.fromARGB(255, 7, 69, 44),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Text('Add To Cart'),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 45,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                  label: const Text('')),
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(widget.product.image!),
                fit: BoxFit.cover,
                width: 200,
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              widget.product.name!,
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              widget.product.unit!,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.remove,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text(
                        '1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.add,
                          color: Colors.green,
                        ))
                  ],
                ),
                Text(
                  '\$${widget.product.price}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
