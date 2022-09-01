import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/controllers/controller_home_page.dart';

import '../../utils/colors_standard.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          const SizedBox(height: 30),
          _welcome(),
        ],
      ),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: secondaryPurple,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            MdiIcons.accountOutline,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _options() {
    return Row(
      children: [
        GetBuilder<ControllerHomePage>(
          init: ControllerHomePage(),
          builder: (controllerHomePage) {
            return IconButton(
              onPressed: () => controllerHomePage.showValue(),
              icon: Icon(
                controllerHomePage.eyesValue ? MdiIcons.eyeOutline : MdiIcons.eyeOff,
                color: Colors.white,
              ),
            );
          },
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            MdiIcons.helpCircleOutline,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person_add_alt_1_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  _welcome() {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 20),
      child: const Text(
        "Olá, Gabriel Zorzan",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
