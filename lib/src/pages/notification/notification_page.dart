import 'package:flutter/material.dart';
import 'package:nubank_interface/src/pages/notification/notification_income.dart';
import 'package:nubank_interface/src/utils/colors_standard.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          NotificationIncome(
            card1: 'Seu ',
            card2: 'informe de rendimentos ',
            card3: 'de 2022 já esta',
            getColor: backgroundColor,
          ),
          NotificationIncome(
            card1: 'Conheça ',
            card2: 'Nubank Vida ',
            card3: 'um seguro simples e que cabe...',
            getColor: backgroundColor,
          ),
          NotificationIncome(
            card1: 'Chegou o ',
            card2: 'débito automático ',
            card3: 'da fatura do... ',
            getColor: backgroundColor,
          ),
        ],
      ),
    );
  }
}
