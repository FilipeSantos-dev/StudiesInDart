import 'package:objeto/src/gato.dart';
import 'src/cachorro.dart';
import 'src/galinha.dart';

void main(List<String> arguments) {
  Gato gato = Gato(nome: "lionor", barulho: "miau", acao: "acariciar");
  Cachorro cachorro = Cachorro(nome: "Gabriel", barulho: "late", acao: "fiel");
  Galinha galinha =
      Galinha(nome: "Tereza", barulho: "cacareja", acao: "põe ovos");

  print("O meu gato ${gato.nome} faz ${gato.barulho} e me ${gato.acao}.");
  print(
      "O meu cachorro ${cachorro.nome} ${cachorro.barulho} e é ${cachorro.acao}.");
  print(
      "A minha galinha ${galinha.nome} ${galinha.barulho} e ${galinha.acao}.");
}
