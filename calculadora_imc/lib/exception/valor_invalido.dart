class ValorInvalidoException implements Exception {
  String error() => "Valor Inválido inserido! Tente novamente";

  @override
  String toString() {
    return error();
  }
}
