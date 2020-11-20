class Pessoa {
  String nome;
  int idade;
  double peso;
  double altura;

  // retorna o imc do usuario
  double imc() => this.peso / (this.altura * this.altura);

  // retorna se o usuario é de maior ou não
  String situacaoIdade() =>
      this.idade >= 18 ? "Você é de maior." : "Você não é de maior.";
}
