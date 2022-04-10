import 'package:flutter/material.dart';

import '../widgets/home_page_card.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HomeCard(
            id: '',
            bkColor: const Color.fromARGB(255, 138, 4, 4),
            imageUrl: '',
            price: '123.0 ',
            title: 'Air Jordan',
            subTitle: 'Test',
          ),
          HomeCard(
            id: '',
            bkColor: const Color.fromARGB(255, 167, 145, 0),
            imageUrl: '',
            price: '123.0 ',
            title: 'Air Jordan',
            subTitle: 'Test',
          ),
        ],
      ),
    );
  }
}
