import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Shop App',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(width: 160),
              Row(
                children: const [
                  Icon(
                    Icons.credit_card,
                    color: Colors.blue,
                    size: 32,
                  ),
                  Text(
                    'PAY',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ],
              ),
              const Icon(Icons.favorite),
            ],
          ),

          /// Here goes my logic for choosing the page
        ],
      ),
    );
  }
}
