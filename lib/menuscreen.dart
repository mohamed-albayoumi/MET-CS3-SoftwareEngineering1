import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List titles = [
      'Name',
      'Account number',
      'Email',
      'Bank address',
      'SWIFT Number'
    ];
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => Column(
          children: [
            Text(titles[index]),
            const SizedBox(
              height: 10,
            ),
            const TextField()
          ],
        ),
        itemCount: 5,
      ),
    );
  }
}
