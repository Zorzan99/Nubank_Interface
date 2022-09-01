import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/controllers/controller_home_page.dart';
import 'package:nubank_interface/src/utils/colors_standard.dart';

class MyCreditCard extends StatelessWidget {
  const MyCreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _iconCreditCard(),
          _textCreditCard(),
          _invoice(),
          _limitDisponible(),
          _insllments(),
        ],
      ),
    );
  }

  _iconCreditCard() {
    return const Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Cartão de crédito',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _invoice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Fatura Atual',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 12),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return Text(
                controllerHomePage.creditCard,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
      ],
    );
  }

  _limitDisponible() {
    return const Text(
      'Limite disponível de R\$ 4.000,00',
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }

  _insllments() {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          'Parcelar comprar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
