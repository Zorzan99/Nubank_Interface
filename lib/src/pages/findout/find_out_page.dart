import 'package:flutter/material.dart';
import 'package:nubank_interface/src/pages/findout/models/card_find_out_more.dart';

class FindOutPage extends StatelessWidget {
  const FindOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Descubra mais',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          findOut(),
        ],
      ),
    );
  }

  findOut() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardFintOutMore(
            imagem: 'assets/image/imagem1Nubank.png',
            title: 'Parcele compras no app',
            description: 'Sua liberdade fincanceira \ncomeça com você',
            textButton: 'Conhecer',
          ),
          const SizedBox(width: 12),
          CardFintOutMore(
            imagem: 'assets/image/imagem1Nubank.png',
            title: 'Portabilidade de salário',
            description: 'Sua liberdade fincanceira \n começa com você',
            textButton: 'Conhecer',
          ),
          const SizedBox(width: 12),
          CardFintOutMore(
            imagem: 'assets/image/imagem1Nubank.png',
            title: 'Indique amigos',
            description: 'Sua liberdade fincanceira \n começa com você',
            textButton: 'Conhecer',
          ),
        ],
      ),
    );
  }
}
