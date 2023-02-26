import 'dart:io';

void main() {
  menu();
}

void menu() {
  stdout.writeln(
      "Deseja ver o exercicio do IMC ou do Fibonacci?\nDigite '1' para IMC\nDigite '2' para Fibonacci");
  String exercicio = stdin.readLineSync()!;

  switch (exercicio) {
    case '1':
      print("\x1B[2J\x1B[0;0H");
      imc();
      break;
    case '2':
      print("\x1B[2J\x1B[0;0H");
      fibonacci();
      break;
    default:
      print("\x1B[2J\x1B[0;0H");
      print('Entrada Invalida');
      menu();
      break;
  }
}

void imc() {
  double imc;
  String altura;
  String peso;

  stdout.writeln("Qual sua altura? ");
  altura = stdin.readLineSync()!;
  print("\x1B[2J\x1B[0;0H");

  stdout.writeln("Qual seu peso? ");
  peso = stdin.readLineSync()!;
  print("\x1B[2J\x1B[0;0H");

  imc = (double.parse(peso) / (double.parse(altura) * double.parse(altura)));

  print("Seu IMC é $imc");
  menu();
}

void fibonacci() {
  int numero1 = 0;
  int numero2 = 1;
  int numero3 = numero1 + numero2;

  stdout.writeln("Quantos numeros da sequência de Fibonacci imprimir? ");
  String quantasVezes = stdin.readLineSync()!;
  print("\x1B[2J\x1B[0;0H");

  for (int i = 0; i < int.parse(quantasVezes); i++) {
    print('#${i + 1}    $numero1 + $numero2 = $numero3\n');
    numero1 = numero2;
    numero2 = numero3;
    numero3 = numero1 + numero2;
  }
  print('Fim da sequencia com $quantasVezes valores');
  menu();
}
