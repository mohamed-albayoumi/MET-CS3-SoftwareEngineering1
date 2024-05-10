import 'package:flutter/material.dart';

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({super.key, required this.num});
  final int num;

  @override
  Widget build(BuildContext context) {
    List photos = [
      'assets/images/5b2812ab77e8c8009eff9a9dc56dfb71.jpeg',
      'assets/images/d8a03e016fa31a6b7cb19c0ad3ebf6d3.png',
      'assets/images/f8325aaa83c666491f1919cd0af0f391.png'
    ];
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => Image(
          image: AssetImage(num == 1
              ? 'assets/images/45977130f0b07d3a8d8887d5dc201910.jpeg'
              : photos[index]),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        itemCount: 3,
      ),
    );
  }
}
