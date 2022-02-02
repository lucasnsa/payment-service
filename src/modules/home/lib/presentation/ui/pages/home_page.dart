import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              child: const Text('Login Page'),
              onPressed: () {
                Modular.to.pushNamed('/login');
              },
            ),
            ElevatedButton(
              child: const Text('Sales Page'),
              onPressed: () {
                Modular.to.pushNamed('/sales');
              },
            ),
            ElevatedButton(
              child: const Text('Astronomy Picture of the Day by Nasa'),
              onPressed: () {
                Modular.to.pushNamed('/apod');
              },
            ),
          ],
        ));
  }
}
