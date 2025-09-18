import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About me'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hi, I am rodney cabauatan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Age: 20 years old',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'I am passionate about programming, technology, and learning new skills.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Hobbies: Coding, gaming, and reading tech blogs.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'My goal is to become a billionario of age in 25 years old and my wish is im never die in my short age.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}