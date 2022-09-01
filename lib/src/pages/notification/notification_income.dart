// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:nubank_interface/src/utils/colors_standard.dart';

class NotificationIncome extends StatefulWidget {
  final String card1;
  final String card2;
  final String? card3;
  final Color? getColor;

  const NotificationIncome({
    Key? key,
    required this.card1,
    required this.card2,
    this.card3,
    this.getColor,
  }) : super(key: key);

  @override
  State<NotificationIncome> createState() => _NotificationIncomeState();
}

class _NotificationIncomeState extends State<NotificationIncome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: widget.card1,
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
            TextSpan(
              text: widget.card2,
              style: TextStyle(color: widget.getColor, fontSize: 16),
            ),
            TextSpan(
              text: widget.card3,
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
