import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/src/utils/colors_standard.dart';

class Investments extends StatelessWidget {
  const Investments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textInvestmentsChevron(),
          _investmentsValue(),
          _consultValue(),
        ],
      ),
    );
  }

  _textInvestmentsChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Investimentos',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _investmentsValue() {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        'O jeito Nu de investir: sem asteriscos, \nlinguagem fácil a partir de R\$ 1. Saiba mais',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  _consultValue() {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(MdiIcons.cash),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              'Consultar saldo para transferência',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
