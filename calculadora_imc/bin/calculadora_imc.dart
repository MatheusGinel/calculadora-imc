import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'package:calculadora_imc/utils/ler_console.dart';
import 'package:calculadora_imc/utils/ler_console_double.dart';

void main(List<String> arguments) {
  print("Bem-vindo a nossa calculadora de Índice de Massa Corporal (IMC)");
  var nome = lerConsole("Informe o seu nome: ");
  var peso = lerConsoleDouble("Informe o seu peso: ");
  var altura = lerConsoleDouble("Informe a sua altura: ");
  calculadora_imc.infoIMC(nome, peso, altura);
}
