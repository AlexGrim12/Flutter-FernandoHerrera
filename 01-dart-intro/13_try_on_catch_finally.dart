void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://google.com');
    print('Exito: $value');
  } on Exception catch(e) {
    print('Tenemos una Exception: $e');
  } catch (e) {
    print('Pff, este es el problemon: $e');
  } finally {
    print('Fin del try y el catch');
  }
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros en el URL');

  // throw 'Error en la peticion';
  // return 'Tenemos un valor de la peticion';
}
