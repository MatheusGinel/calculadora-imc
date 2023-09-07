import 'package:calculadora_imc/utils/ler_console.dart';

double lerConsoleDouble(String texto) {
  var numero = double.tryParse(lerConsole(texto));
  if (numero == null) {
    print("Numero informado incorreto, alterando para 0");
    return 0.0;
  } else {
    return numero;
  }
}
