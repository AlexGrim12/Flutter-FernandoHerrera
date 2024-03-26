void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://google.com');
    print(value);
  } catch (e) {
    print('Tenemos un error: $e');
  }
  print('FIn del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la peticion';
  // return 'Tenemos un valor de la peticion';
}
