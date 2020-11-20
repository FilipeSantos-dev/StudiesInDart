import 'package:segundo_projeto/src/calculo_idade.dart';
import 'package:segundo_projeto/src/carrinho_de_compras.dart';
import 'package:segundo_projeto/src/imc.dart';
import 'package:segundo_projeto/src/maps.dart';

import 'src/calculadora.dart';

void main(List<String> arguments) {
  if (arguments[0] == "calculadora") {
    calculadora();
  } else if (arguments[0] == "calcular-idade") {
    calculo_idade();
  } else if (arguments[0] == "imc") {
    imc();
  } else if (arguments[0] == "carrinho-de-compras") {
    carrinho_de_compras();
  } else if (arguments[0] == "maps") {
    maps();
  } else {
    print("Esse programa não existe");
  }
}
