import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
const HomePage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Home"),
centerTitle: true,
backgroundColor: Colors.blue,
),
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
const SizedBox(height: 20),
const Text(
"Welcome to My Flutter App 🚀",
style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
textAlign: TextAlign.center,
),
const SizedBox(height: 10),
const Text(
"Hi! I'm Rodney Cabauatan, 20 years old from San Jose del Monte. "
"This is the Home Page of my Flutter app. Dito mo makikita ang "
"basic info at quick navigation papunta sa About at Contact pages.",
textAlign: TextAlign.center,
style: TextStyle(fontSize: 16),
),
const SizedBox(height: 30),
Image.asset(
"assets/flutter.png", // lagay ka ng image (logo or banner)
height: 150,
),
const SizedBox(height: 30),
ElevatedButton.icon(
onPressed: () {
Navigator.pushNamed(context, "/about");
},
icon: const Icon(Icons.person),
label: const Text("Go to About Page"),
),
const SizedBox(height: 10),
ElevatedButton.icon(
onPressed: () {
Navigator.pushNamed(context, "/contact");
},
icon: const Icon(Icons.contact_page),
label: const Text("Go to Contact Page"),
),
],
),
),
);
}
}