import 'dart:io';

void maps() {
  List<Map<String, dynamic>> dados_usuarios = [];
  bool condicao = true;

  print("======= SEJA BEM-VINDO ======");

  while (condicao) {
    print("=== Informe oque deseja fazer:");
    String comando = stdin.readLineSync();
    print("\x1B[2J\x1B[0;0H");

    //controle de exibição para o usuário
    if (comando == "cadastrar") {
      cadastrar(dados_usuarios);
    } else if (comando == "imprimir") {
      imprimir(dados_usuarios);
    } else if (comando == "remover") {
      dados_usuarios.removeAt(remover(dados_usuarios));
    } else if (comando == "sair") {
      print("======= PROGRAMA FINALIZADO =======");
      condicao = false;
    } else {
      print("Comando não existente!");
    }
  }
}

// função que cadastra os usuários
void cadastrar(dados_usuarios) {
  Map<String, dynamic> cadastro = {};

  print("Informe o nome:");
  cadastro["nome"] = stdin.readLineSync();
  print("Informe a idade:");
  cadastro["idade"] = stdin.readLineSync();
  print("Informe a cidade:");
  cadastro["cidade"] = stdin.readLineSync();
  print("Informe o estado:");
  cadastro["estado"] = stdin.readLineSync();

  dados_usuarios.add(cadastro);
  print("\x1B[2J\x1B[0;0H");
}

// função que exibi todos os cadastros
void imprimir(dados_usuarios) {
  print("======= LISTA DE CADASTROS =======");

  for (int i = 0; i < dados_usuarios.length; i++) {
    print(
        "${i}º cadastro:\n nome: ${dados_usuarios[i]["nome"]}\n idade: ${dados_usuarios[i]["idade"]}\n cidade: ${dados_usuarios[i]["cidade"]}\n estado: ${dados_usuarios[i]["estado"]}");
    print("=================");
  }
}

// função para remover algum cadastro
int remover(dados_usuarios) {
  imprimir(dados_usuarios);

  print("Informe qual cadastro deseja remover:");
  int cadastro = int.parse(stdin.readLineSync());
  print("\x1B[2J\x1B[0;0H");

  return cadastro;
}
