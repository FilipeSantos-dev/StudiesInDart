import 'animal.dart';

class Galinha extends Animal {
  String nome;
  Galinha({this.nome, barulho, acao}) : super(barulho: barulho, acao: acao);
}
