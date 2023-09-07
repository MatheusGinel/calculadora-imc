import 'dart:io';
import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/exception/valor_invalido.dart';

void infoIMC(String nome, double peso, double altura) {
  var pessoa1 = Pessoa(nome, peso, altura);
  double resultado = pessoa1.calcularIMC();
  try {
    if (peso <= 0 || altura <= 0) {
      throw ValorInvalidoException();
    } else {
      resultado = peso / (altura * altura);
    }
  } catch (ValorInvalidoException) {
    print(ValorInvalidoException);
    exit(0);
  }

  String texto = "O seu IMC é de: ";
  String numeroFormatado = resultado.toStringAsFixed(2);
  String frase = texto + numeroFormatado;

  print("-------------------------------------------------------");
  print("-------------------------------------------------------");
  print("Resumo da sua ficha técnica!");
  print("Nome: $nome");
  print("Peso: $peso");
  print("Altura: $altura");
  print(frase);

  if (resultado < 16) {
    print("DIAGNÓSTICO: Magreza Grave!");
  } else if (resultado >= 16 && resultado < 17) {
    print("DIAGNÓSTICO: Magreza Moderada!");
  } else if (resultado >= 17 && resultado < 18.5) {
    print("DIAGNÓSTICO: Magreza Leve!");
  } else if (resultado >= 18.5 && resultado < 25) {
    print("DIAGNÓSTICO: Saudável!");
  } else if (resultado >= 25 && resultado < 30) {
    print("DIAGNÓSTICO: Sobrepeso!");
  } else if (resultado >= 30 && resultado < 35) {
    print("DIAGNÓSTICO: Obesidade Grau I!");
  } else if (resultado >= 35 && resultado < 40) {
    print("DIAGNÓSTICO: Obesidade Grau II!");
  } else if (resultado >= 40) {
    print("DIAGNÓSTICO: Obesidade Grau III!");
  }
}
