import 'package:objeto/src/animal.dart';

class Cachorro extends Animal {
  String nome;
  Cachorro({this.nome, barulho, acao}) : super(barulho: barulho, acao: acao);
}
