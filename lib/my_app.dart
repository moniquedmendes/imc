import 'dart:io';

void main() {
  // Solicita ao usuário que insira o peso em quilogramas
  print("Informe o peso em quilogramas:");
  double peso = double.parse(stdin.readLineSync()!);

  // Solicita ao usuário que insira a altura em metros
  print("Informe a altura em metros:");
  double altura = double.parse(stdin.readLineSync()!);

  // Calcula o IMC
  double imc = calcularIMC(peso, altura);

  // Exibe o resultado
  print("Seu IMC é: $imc");

  // Interpreta o IMC
  interpretarIMC(imc);
}

double calcularIMC(double peso, double altura) {
  // Fórmula do IMC: peso / (altura * altura)
  return peso / (altura * altura);
}

void interpretarIMC(double imc) {
  if (imc < 18.5) {
    print("Abaixo do peso normal.");
  } else if (imc >= 18.5 && imc < 24.9) {
    print("Peso normal.");
  } else if (imc >= 25 && imc < 29.9) {
    print("Sobrepeso.");
  } else if (imc >= 30 && imc < 34.9) {
    print("Obesidade Grau 1.");
  } else if (imc >= 35 && imc < 39.9) {
    print("Obesidade Grau 2.");
  } else {
    print("Obesidade Grau 3 (Obesidade Mórbida).");
  }
}
