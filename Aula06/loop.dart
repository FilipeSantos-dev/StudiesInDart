import 'dart:io';

main() {
  print("======= Calculando pares e impares =======");
  print("=== Informe até qual número deseja calcular:");
  int valor = int.parse(stdin.readLineSync());
  print("-----------------");
  
  List<int> par =  [];
  List<int> impar = [];

  for(int i = 1; i < valor; i++) {
    print(i);

    if(i % 2 == 0) {
      par.add(i);
    } else {
      impar.add(i);
    }
  }
  print("--- Números Pares ---");
  print(par);
  print("---------------------");
  print("--- Números Impares ---");
  print(impar);
  print("---------------------");
}