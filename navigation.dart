import 'package:flutter/material.dart';
import 'screens/form_screen.dart';
import 'screens/product_form_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/userForm': (context) => FormScreen(),
        '/productForm': (context) => ProductFormScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose Form')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/userForm'),
              child: Text('User Form'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/productForm'),
              child: Text('Product Form'),
            ),
          ],
        ),
      ),
    );
  }
}
