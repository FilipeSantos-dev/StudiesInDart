import 'package:objeto/src/animal.dart';

class Gato extends Animal {
  String nome;

  Gato({this.nome, barulho, acao}) : super(barulho: barulho, acao: acao);
}
