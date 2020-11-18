import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;

  introducao();

  // loop que ira controlar oque ira ser apresentado ao usuário
  while(condicao) {
    print("=== Informe o nome do produto ou oque deseja:");
    String texto = stdin.readLineSync();

    if(texto == "sair") {
      sair();
      condicao = false;
    }else if(texto == "carrinho") {
      carrinho(produtos);
    } else {
      produtos.add(texto);
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

// função que ira finalizar o programa
void sair() {
  print("====== PROGRAMA FINALIZADO ======");
}

// função que ira exibir os produtos já cadastrados
String carrinho(produtos) {
  print("====== LISTA DE PRODUTOS ======");

  for(int i = 0; i < produtos.length; i++) {
    print("Produto $i: " + produtos[i] + ".");
  }
}