main() {
  int numero1 = 2;
  double numero2 = 70.0;

  // fazendo calculos matemáticos
  num total = numero1 + numero2;
  print(total);

  num total = numero1 - numero2;
  print(total);
  
  if(numero2 != 0) {
    num total = numero1 / numero2;
    print(total);
  } else {
    print("Erro, divisor impossível!");
  }
  num total = numero1 * numero2;
  print(total);
}