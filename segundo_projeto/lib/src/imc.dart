import 'dart:io';

void imc() {
  introducao();
}

// função que vai pedir as informaçãoes necessárias
void introducao() {
  print("------------ OLÁ, SEJA BEM-VINDO ------------");
  print("Para saber seu imc, informe a sua altura:");
  double altura = double.parse(stdin.readLineSync());
  print("Ótimo, agora informe seu peso:");
  double peso = double.parse(stdin.readLineSync());

  double imc = calculaImc(altura, peso);
  resultadoFinal(imc);
}

// função responsável pelo calculo retornando o mesmo
double calculaImc(altura, peso) {
  double imc = peso / (altura * altura);
  return imc;
}

// função que vai apresentar ao usuário o estado atual em que ele se encontra
void resultadoFinal(imc) {
  if (imc < 18.5) {
    print("Abaixo do peso.");
  } else if (imc >= 18.5 && imc <= 24.9) {
    print("Peso normal.");
  } else if (imc >= 25 && imc <= 29.9) {
    print("Sobrepeso.");
  } else if (imc >= 30 && imc <= 34.9) {
    print("Obesidade grau 1.");
  } else if (imc >= 35 && imc <= 39.9) {
    print("Obesidade grau 2.");
  } else {
    print("Obesidade grau 3.");
  }

  print("Obrigado por nos escolher!");
}
