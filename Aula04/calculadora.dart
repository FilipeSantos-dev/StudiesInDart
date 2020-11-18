import 'dart:io';

main() {

  // calculando a media
  print("Informe a sua 1º nota: ");
  double numero1 = double.parse(stdin.readLineSync());
  print("Informe a sua 2º nota: ");
  double numero2 = double.parse(stdin.readLineSync());
  print("Informe a sua 3º nota: ");
  double numero3 = double.parse(stdin.readLineSync());
  print("Informe a sua 4º nota: ");
  double numero4 = double.parse(stdin.readLineSync());

  double media = (numero1 + numero2 + numero3 + numero4)/4;

  print("A sua média foi: $media.");

  if(media >= 6) {
    print("Aluno aprovado!");
  } else if(media >= 5 && media < 6) {
    print("Aluno em recuperação");
  } else {
    print("Aluno Reprovado");
  }
}