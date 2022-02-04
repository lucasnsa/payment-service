import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('eee'),
          onPressed: () {
            Modular.to.pop();
          },
        ),
      ),
    );
  }
}
