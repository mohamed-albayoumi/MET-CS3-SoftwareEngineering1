import 'package:flutter/material.dart';

class FeaturedProperties extends StatelessWidget {
  const FeaturedProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('For Sale'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            leading: const Image(
              height: 150,
              width: 150,
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/unsplash_ZdJ6eIKN3G0.png',
              ),
            ),
            title: const Text('FOR SALE'),
            subtitle: const Text('by Om Sree builders & Dev...'),
            trailing: Text('4${index}0'),
          ),
          itemCount: 15,
        ));
  }
}
