import 'package:flutter/material.dart';
import 'package:toku/components/category_items.dart';
import 'package:toku/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          Category(
            text: 'Family Members',
            color: Colors.green,
          ),
          Category(
            text: 'Colors',
            color: Colors.purple,
          ),
          Category(
            text: 'Pharser',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
