import 'package:flutter/material.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class HomeCard extends StatelessWidget {
  //const HomeCard({Key? key}) : super(key: key);
  String? title;
  String? subTitle;
  Color? bkColor;
  String? imageUrl;
  String? price;
  String? id;

  // ignore: use_key_in_widget_constructors
  HomeCard({
    required this.title,
    required this.subTitle,
    required this.bkColor,
    required this.imageUrl,
    required this.price,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(24),
      height: 240,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        color: bkColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title!,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite, color: Colors.white),
              )
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text(
                subTitle!,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 50),
              Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network('https://picsum.photos/250?image=9'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            price!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
