import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
const ContactPage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Contact"),
centerTitle: true,
backgroundColor: Colors.blue,
),
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
const CircleAvatar(
radius: 50,
backgroundImage: AssetImage("assets/profile.jpg"), // replace with your profile pic
),
const SizedBox(height: 20),
const Text(
"Rodney Cabauatan",
style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
),
const SizedBox(height: 10),
const Text(
"20 years old",
style: TextStyle(fontSize: 18, color: Colors.grey),
),
const SizedBox(height: 20),
const Divider(),
const SizedBox(height: 10),
ListTile(
leading: const Icon(Icons.email, color: Colors.blue),
title: const Text("rodneycabauatan@example.com"),
onTap: () {
// add email launcher later if you want
},
),
ListTile(
leading: const Icon(Icons.phone, color: Colors.green),
title: const Text("+63 912 345 6789"),
onTap: () {
// add call function later if you want
},
),
ListTile(
leading: const Icon(Icons.location_on, color: Colors.red),
title: const Text("San Jose del Monte, Bulacan, Philippines"),
),
const Spacer(),
ElevatedButton.icon(
onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(content: Text("Contact details copied!")),
);
},
icon: const Icon(Icons.copy),
label: const Text("Copy Info"),
),
],
),
),
);
}
}