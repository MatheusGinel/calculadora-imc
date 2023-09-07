import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  var pessoaTeste = Pessoa("", 75, 1.85);
  test('Calcular IMC de uma pessoa com 75kg e 1.85 metros', () {
    expect(pessoaTeste.calcularIMC(), equals(21.913805697589478));
  });
}
