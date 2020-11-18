import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;

  introducao();

  // loop que ira controlar oque ira ser apresentado ao usuário
  while(condicao) {
    print("=== Informe o nome do produto ou oque deseja:");
    String texto = stdin.readLineSync();
    print("\x1B[2J\x1B[0;0H");

    if(texto == "sair") {
      sair();
      condicao = false;
    }else if(texto == "imprimir") {
      carrinho(produtos);
    } else if(texto == "remover") {
      carrinho(produtos);
      produtos.removeAt(remover(produtos));
    } else {
      produtos.add(texto);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

//função que ira exibir uma introdução para o usúario mostrando oque ele pode fazer
introducao() {
  print("======= SEJA BEM-VINDO =======");
  print("OBS: caso queira ver a sua lista de compras digite 'carrinho'\n caso queira finalizar digite 'sair'!");
  print("==============================");
  print("");
}

// função que ira exibir os produtos já cadastrados
String carrinho(produtos) {
  if(produtos == null) {
    print("Nenhum produto foi adicionado ao carrinho ainda.");
  } else {
    print("====== LISTA DE PRODUTOS ======");

    for(int i = 0; i < produtos.length; i++) {
      print("Item $i - ${produtos[i]}.");
    }
  }
}

// função que ira remover o item selecionado pelo usuarios
int remover(produtos) {
  print("=== Informe qual item deseja remover:");
  int item = int.parse(stdin.readLineSync());
  
  return item;
}

// função que ira finalizar o programa
void sair() {
  print("====== PROGRAMA FINALIZADO ======");
}