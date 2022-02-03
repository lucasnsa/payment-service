import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Modular.to.pushNamed('/sales/checkout');
            },
            child: const Text('asdasd'),
          ),
        ],
      ),
    );
  }
}
