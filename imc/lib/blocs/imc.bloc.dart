import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Imcbloc {
  var heighCtrl = new TextEditingController();
  var weighCtrl = new TextEditingController();
  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    
    double weight = double.parse(weighCtrl.text.toString());
    double height = double.parse(heighCtrl.text.toString()) / 100;
    double imc = weight / (height * height);
print(weighCtrl);
    if (imc < 18.6) {
      result = "abaixo do Peso (${imc.toStringAsPrecision(2)})";
    } else if (imc > 18.6 && imc <= 24.9) {
      result = "Peso Ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc > 24.9 && imc <= 29.9) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc > 29.9 && imc <= 34.9) {
      result = "Obesidade de Grau I (${imc.toStringAsPrecision(2)})";
    } else if (imc > 34.9 && imc <= 39.9) {
      result = "Obesidade de Grau II (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      result = "Obesidade de Grau III (${imc.toStringAsPrecision(2)})";
    }
  }
}
