import 'package:flutter/material.dart';
import 'package:world_real_state/HomeScreen.dart';
import 'package:world_real_state/descountsceen.dart';
import 'package:world_real_state/menuscreen.dart';

class MainLayerScreen extends StatefulWidget {
  const MainLayerScreen({super.key});

  @override
  State<MainLayerScreen> createState() => _MainLayerScreenState();
}

class _MainLayerScreenState extends State<MainLayerScreen> {
  List pages = [
    const FeaturedProperties(),
    const AnotherScreen(
      num: 1,
    ),
    const AnotherScreen(
      num: 2,
    ),
    const MenuScreen()
  ];
  int pageNum = 0;
  List titles = ['Home', 'Discount', 'Payment'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: titles[pageNum],
        centerTitle: true,
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
        ],
      ),
      body: pages[pageNum],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: '')
        ],
        onTap: (value) => setState(() {
          pageNum = value;
        }),
      ),
    );
  }
}
