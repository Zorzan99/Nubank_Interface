import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_interface/src/pages/findout/find_out_page.dart';
import 'package:nubank_interface/src/pages/header/header.dart';
import 'package:nubank_interface/src/pages/security/security_life.dart';
import 'package:nubank_interface/src/pages/shopping/shopping_page.dart';

import 'account/account_page.dart';
import 'actions/menu_itens.dart';
import 'creditCards/credit_cards.dart';
import 'creditCards/my_credit_card.dart';
import 'investments/investments.dart';
import 'notification/notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Header(),
              AccountNubank(),
              MenuItens(),
              Divider(thickness: 1.6),
              CreditCards(),
              NotificationPage(),
              Divider(thickness: 1.6),
              MyCreditCard(),
              Investments(),
              SecurityLife(),
              Divider(thickness: 1.6),
              ShoppingPage(),
              Divider(thickness: 1.6),
              FindOutPage(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
