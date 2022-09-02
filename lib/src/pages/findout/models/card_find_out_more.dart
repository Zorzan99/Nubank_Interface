import 'package:flutter/material.dart';
import 'package:nubank_interface/src/utils/colors_standard.dart';

class CardFintOutMore extends StatelessWidget {
  String imagem;
  String title;
  String description;
  String textButton;

  CardFintOutMore({
    Key? key,
    required this.imagem,
    required this.title,
    required this.description,
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image.asset(
            imagem,
            fit: BoxFit.cover,
            width: 230,
          ),
          const SizedBox(height: 22),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 22),
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              textButton,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
