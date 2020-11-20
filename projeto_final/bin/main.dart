import 'dart:io';

import '../lib/pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa = new Pessoa();

  print('=== Escreva seu nome:');
  pessoa.nome = stdin.readLineSync();
  print('=== Escreva sua idade:');
  pessoa.idade = int.parse(stdin.readLineSync());
  print('=== Escreva seu peso:');
  pessoa.peso = double.parse(stdin.readLineSync());
  print('=== Escreva sua altura:');
  pessoa.altura = double.parse(stdin.readLineSync());

  print("Nome: ${pessoa.nome}");
  print("situação de idade: ${pessoa.situacaoIdade()}");
  print("Imc: ${pessoa.imc()}.");
}
