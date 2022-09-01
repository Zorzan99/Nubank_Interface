import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String saldo = 'R\$ 873.244,00';
  bool eyesValue = true;
  String creditCard = "R\$ 54321,00";

  void showValue() {
    eyesValue = !eyesValue;

    update();
  }
}
