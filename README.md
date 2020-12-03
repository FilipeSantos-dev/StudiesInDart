# Dart

# Links que podem ajudar:

### [https://pt.wikipedia.org/wiki/Dart_(linguagem_de_programação)](https://pt.wikipedia.org/wiki/Dart_(linguagem_de_programa%C3%A7%C3%A3o))

### [https://www.udemy.com/course/logica-de-programacao-com-dart/learn/lecture/14273548#overview](https://www.udemy.com/course/logica-de-programacao-com-dart/learn/lecture/14273548#overview)

### [https://www.devmedia.com.br/sintaxe-dart-tipos-nao-tao-primitivos/40368](https://www.devmedia.com.br/sintaxe-dart-tipos-nao-tao-primitivos/40368)

# Sobre o Dart

### Dart é uma linguagem de script criada pela Google em 10 a 11 de outrubro de 2011. Inicialmente foi desenvolvida para a web mas que possui frameworks que aumentam a sua utilidade para outras áreas. Além disso, por ser orientada a objeto, é fortemente baseada nas classes, o conceito fundamental da programação orientada a objetos, e que você pode ou não declarar o tipo da sua variável.

### Têm a tipagem como opcional, pois seu interpretador tenta reconhecer as tipagens por si só.

# Qual o meu intuito com Dart:

### Aprender os conceitos básicos do Dart para migrar para o Flutter e aprender a desenvolver aplicativos.

### Meu único intuito com isso é estudar, se divertir e talvez e investir em um futuro nessa área.

### Usar o Dart com tipagem para práticar.

# Conceitos básicos do Dart

### Exemplo de código em Dart:

```dart
main() {
	print("Hello World");
}
```

# Variáveis em Dart

### As variáveis em Dart são as seguintes:

- Númericas
    - int → Usada para receber valores inteiros positivos ou negativos.
    - double → Usada para receber valores com um ponto flutuante como decimais.
    - num → Aceita tanto valores do tipo int quanto double aumentando ainda mais a sua capacidade.

- String → Usado para armazenar textos ou caracteres.
- bool →Variável de controle
    - true → Usado para dizer que algo é verdadeiro.guy
    - false → Usado para dizer que algo é falso.

- dynamic →Usado quando não queremos especificar um tipo para a variável, podendo receber tipos diferentes mesmo em tempo de execução.
- List →Usado quando não queremos especificar um tipo para a variável, podendo receber tipos diferentes mesmo em tempo de execução.
    - Exemplo de como colocar um tipo na list → List<tipo> como List<String>

- dynamic → Usado quando não queremos dar um tipo especifico a uma variável.
- Maps → Explicação abaixo de funções!


# Funções

### Funções em Dart pode ser criada de dois modos, a funcão que não retorna um valor declarada com um void antes do seu nome, e as que que retornam um valor declaradas com o seu tipo de retorno antes do se nome.

### Exemplo de uma função sem retorno:

```dart
// Sem parâmetro
void exibirTexto() {
	print("Olá");
}

// Parâmetro sem tipagem
void exibirTextoRecebidos(texto-recebido) {
	print(texto-recebido);
}
```

### Exemplo de uma função com retorno:

```dart
// Parâmetro Opicional Posicional
String nomeCompleto([String nome]) {
	if(nome != null) {
		print("Nome: $nome");
	} else {
		print("Nome: Filipe");
	}
	return 'João Tiago Neves';
}

// Parâmetros com tipagem
int soma(int a, int b) {
	return a + b;
}
```

### Assim como visto nos exemplos acima é possivel passar parametros em qualquer tipo de função e também especificar o tipo dela.

# Parâmetro Opicional Posicional

### Para definir parâmetros opcionais posicionais, devemos agrupar esses parâmetros entre colchetes.

### Atenção: Parâmetros opcionais posicionais precisam ser declarados após os parâmetros obrigatórios.

## Também temos a opção de passar valores padrões para os parâmetros:

```dart
void exibirNomeECargo(String nome, [String cargo = "Desconhecido"]) {

print("Nome: $nome ; Cargo: $cargo");

}

exibirNomeECargo("Caio", "Desenvolvedor"); // Nome: Caio ; Cargo: Desenvolvedor

exibirNomeECargo("Caio"); // Nome: Caio ; Cargo: Desconhecido
```

# Map

### As variáveis de tipo Map são um tipo de array personalizado, muito parecida com o JSON. Essas variáveis diferente das demais recebe duas coisas em seu tipo, a primeira coisa é um tipo String referênciando a chave que você criará e a segunda é ou uma variável especifica ou uma dinâmica.

## Exemplo de criação de uma variável Map:

```dart
Map<String, dynamic> dados_usuario = {
// "nome" = String, "Filipe" = variável dinâmica
	"nome": "Filipe",
	"idade": 18,
	"estudando": true,
};
```

# List ou Array de Map

```dart
List<Map<String, dynamic>> dados_usuario = [
	{"nome", "Filipe", "idade", 18, "estudando", true},
	{"nome", "Vitoria", "idade", 19, "estudando", true},
	{"nome", "Denilson", "idade", 18, "estudando", true},
	{"nome", "Jurandi", "idade", 60, "estudando", false},
];
```

# Programação Orientada a Objeto

### É um jeito de trazer a programação mais parecida com oque temos na vida real, nesse paradigma se explora bastante o conceito de classes e heranças.

## Construtores

## É uma maneira de definirmo coisa padrões ou que aconteceram antes de todo o código. Usada bastante para iniciar variáveis ou funções padrões.

## Exemplos de construtores:

Construtor com parâmetros inteligentes:

```dart
import 'src/pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa = new Pessoa(nome: "Filipe", idade: 18, sexo: "M");
  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.sexo);
}
```

```dart
class Pessoa {
  String nome;
  int idade;
  String sexo;

  Pessoa({String nome, int idade, String sexo}) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
  }
}
```

Construtores inteligentes:

```dart
import 'src/pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa = new Pessoa(nome: "Filipe", idade: 18, sexo: "M");
  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.sexo);
}
```

```dart
class Pessoa {
  String nome;
  int idade;
  String sexo;

  Pessoa({this.nome, this.idade, this.sexo});
}
```

## Tipos de proteção de uma variável

### Dois modos de protegermos uma variável em uma classe que será instanciada é com o "_" antes do nome da variável e o tipo "final" antes do tipo da variável.

## Proteção _

### Faz com que a variável sejá inalterável.

## Proteção Final

### Faz com que uma variável só possa ser atribuída uma vez e após isso ela fica sendo usada apenas com o valor antes atribuido.

```dart
class Pessoa {
	String _nome = "Filipe";
	final int idade = 18";
}
```
