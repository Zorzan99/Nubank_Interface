import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/controllers/controller_home_page.dart';

class AccountNubank extends StatefulWidget {
  const AccountNubank({Key? key}) : super(key: key);

  @override
  State<AccountNubank> createState() => _AccountNubankState();
}

class _AccountNubankState extends State<AccountNubank> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountChevron(),
          const SizedBox(height: 12),
          _moneyAccount(),
        ],
      ),
    );
  }

  _accountChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Conta',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          MdiIcons.chevronRight,
        )
      ],
    );
  }

  _moneyAccount() {
    return GetBuilder<ControllerHomePage>(
      init: ControllerHomePage(),
      builder: (controller) {
        return Text(
          controller.saldo,
          style: const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
