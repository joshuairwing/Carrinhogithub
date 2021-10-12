import 'dart:io';

List<String> produtos = []; //Variável global
main() {
  bool condicao = true;

  while (condicao) {
    print("");
    print("=========== Digite algum produto: ===========");
    print("=== Digite 'sair' para fechar o programa. ===");
    print("= Digite 'imprimir' pra ver lista completa. =");
    String text = stdin.readLineSync() ?? "";
    print("");

    if (text == 'sair') {
      print("============= PROGRAMA ENCERRADO ============");
      condicao = false;
    } else if (text == 'imprimir') {
      imprimir();
    } else if (text == 'remover') {
      remover();
    } else {
      produtos.add(text);
      print("\x1B[2J\x1B[0;0H"); //Serve pra resetar o que o terminal mostra.
    }
  }
}

//Funções de imprimir e remover produtos da lista.

imprimir() {
  print("==== Digite 'remover' para deletar algo. ====");
  print("\n");

  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i: ${produtos[i]}");
  }
}

remover() {
  print("= Digite o número do item que deseja remover. =");

  imprimir();

  int item = int.parse(stdin.readLineSync() ?? "");
  produtos.removeAt(item);

  print("====== ITEM REMOVIDO. ======");
}
