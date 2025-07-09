import 'package:flutter/material.dart';

class OrderFailedModal extends StatefulWidget {
  const OrderFailedModal({Key? key}) : super(key: key);

  @override
  _OrderFailedModalState createState() => _OrderFailedModalState();
}

class _OrderFailedModalState extends State<OrderFailedModal> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.66,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TextButton.icon(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                        label: const Text(''))
                  ],
                ),
                const Image(
                  image: AssetImage("assets/imgs/cartError.png"),
                  width: 240,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Oops! Order Failed',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Something went tembly wrong.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 7, 69, 44)),
                      elevation: MaterialStateProperty.all(0),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 56)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)))),
                  child: const Text(
                    'Please Try Again',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Back to home',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
