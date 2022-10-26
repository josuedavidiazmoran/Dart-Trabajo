import 'dart:io';
import 'ACompacto.dart';
import 'ALujo.dart';
import 'Camioneta.dart';
import 'Vagoneta.dart';

List<ACompacto> ACompactos = [];
List<ALujo> ALujos = [];
List<Camioneta> Camionetas = [];
List<Vagoneta> Vagonetas = [];

void main() {
  ALujo aLujo = new ALujo(
    modelo: 'Camaro',
    marca: 'chevrolet',
    placa: 71285543,
    Pasajeros: 2,
  );
  ALujos.add(aLujo);
  menu();
}

void agregarALujo() {
  stdout.write("Modelo del auto: ");
  String? modelo = stdin.readLineSync();
  String modelos = "$modelo";
  stdout.write("Marca del auto: ");
  String? marca = stdin.readLineSync();
  String marcas = "$marca";
  stdout.write("Placa del auto:");
  String? placa = stdin.readLineSync();
  int placas = int.parse(placa!);
  stdout.write("Numero de Pasajeros:");
  String? pasajero = stdin.readLineSync();
  int pasajeros = int.parse(pasajero!);
  ALujo autLujo = new ALujo(
    Pasajeros: pasajeros,
    placa: placas,
    marca: marcas,
    modelo: modelos,
  );
  ALujos.add(autLujo);
}

void agregarACompacto() {
  stdout.write("Modelo del auto: ");
  String? modelo = stdin.readLineSync();
  String modelos = "$modelo";
  stdout.write("Marca del auto: ");
  String? marca = stdin.readLineSync();
  String marcas = "$marca";
  stdout.write("Placa del auto:");
  String? placa = stdin.readLineSync();
  int placas = int.parse(placa!);
  stdout.write("Numero de Pasajeros:");
  String? pasajero = stdin.readLineSync();
  int pasajeros = int.parse(pasajero!);
  ALujo autLujo = new ALujo(
    Pasajeros: pasajeros,
    placa: placas,
    marca: marcas,
    modelo: modelos,
  );
  ALujos.add(autLujo);
}

void agregarCamioneta() {
  stdout.write("Modelo del auto: ");
  String? modelo = stdin.readLineSync();
  String modelos = "$modelo";
  stdout.write("Marca del auto: ");
  String? marca = stdin.readLineSync();
  String marcas = "$marca";
  stdout.write("Placa del auto:");
  String? placa = stdin.readLineSync();
  int placas = int.parse(placa!);
  stdout.write("Carga Total:");
  String? carga = stdin.readLineSync();
  int cargas = int.parse(carga!);
  Camioneta camioneta = new Camioneta(
    Carga: cargas,
    placa: placas,
    marca: marcas,
    modelo: modelos,
  );
  Camionetas.add(camioneta);
}

void agregarVagoneta() {
  stdout.write("Modelo del Vagoneta: ");
  String? modelo = stdin.readLineSync();
  String modelos = "$modelo";
  stdout.write("Marca del Vagoneta: ");
  String? marca = stdin.readLineSync();
  String marcas = "$marca";
  stdout.write("Placa del Vagoneta:");
  String? placa = stdin.readLineSync();
  int placas = int.parse(placa!);
  stdout.write("Numero de Pasajeros:");
  String? pasajero = stdin.readLineSync();
  int pasajeros = int.parse(pasajero!);
  Vagoneta vagoneta = new Vagoneta(
    Pasajeros: pasajeros,
    placa: placas,
    marca: marcas,
    modelo: modelos,
  );
  Vagonetas.add(vagoneta);
}

void listarALujo() {
  for (int i = 0; i < ALujos.length; i++) {
    int pocision = i + 1;
    stdout.write("$pocision.");
    ALujos[i].getAlll();
    stdout.write("\n");
  }
}

void listarACompacto() {
  for (int i = 0; i < ACompactos.length; i++) {
    int pocision = i + 1;
    stdout.write("$pocision.");
    ACompactos[i].getAlll();
    stdout.write("\n");
  }
}

void listarCamioneta() {
  for (int i = 0; i < Camionetas.length; i++) {
    int pocision = i + 1;
    stdout.write("$pocision.");
    Camionetas[i].getAlll();
    stdout.write("\n");
  }
}

void listarVagoneta() {
  for (int i = 0; i < Vagonetas.length; i++) {
    int pocision = i + 1;
    stdout.write("$pocision.");
    Vagonetas[i].getAlll();
    stdout.write("\n");
  }
}

void menu() {
  stdout.write("Menu Principal\n");
  stdout.write("1.Autos de lujo\n");
  stdout.write("2.Autos compactos\n");
  stdout.write("3.Camionetas\n");
  stdout.write("4.Vagonetas\n");
  stdout.write("5.Salir\n");
  stdout.write("Elija una opcion:");
  String? valor = stdin.readLineSync();
  int x = int.parse(valor!);
  switch (x) {
    case 1:
      menuALujo();
      break;
    case 2:
      menuACompactos();
      break;
    case 3:
      menuCamionetas();
      break;
    case 4:
      menuVagonetas();
      break;
    case 5:
      stdout.write("Nos vemos\n");
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}

void menuALujo() {
  stdout.write("---- AUTOS DE LUJO ----\n");
  stdout.write("1.Agregar auto\n");
  stdout.write("2.Listar autos\n");
  stdout.write("3.Regresar\n");
  stdout.write("Elija una opcion:");
  String? valor = stdin.readLineSync();
  int x = int.parse(valor!);
  switch (x) {
    case 1:
      agregarALujo();
      menuALujo();
      break;
    case 2:
      listarALujo();
      menuALujo();
      break;
    case 3:
      stdout.write("Alamos\n");
      menu();
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}

void menuACompactos() {
  stdout.write("---- AUTOS COMPACTOS ----\n");
  stdout.write("1.Agregar auto\n");
  stdout.write("2.Listar autos\n");
  stdout.write("3.Regresar\n");
  stdout.write("Elija una opcion:");
  String? valor = stdin.readLineSync();
  int x = int.parse(valor!);
  switch (x) {
    case 1:
      agregarACompacto();
      menuACompactos();
      break;
    case 2:
      listarACompacto();
      menuACompactos();
      break;
    case 3:
      stdout.write("Alamos\n");
      menu();
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}

void menuCamionetas() {
  stdout.write("---- CAMIONETA ----\n");
  stdout.write("1.Agregar camioneta\n");
  stdout.write("2.Listar camionetas\n");
  stdout.write("3.Regresar\n");
  stdout.write("Elija una opcion:");
  String? valor = stdin.readLineSync();
  int x = int.parse(valor!);
  switch (x) {
    case 1:
      agregarCamioneta();
      menuCamionetas();
      break;
    case 2:
      listarCamioneta();
      menuCamionetas();
      break;
    case 3:
      stdout.write("Alamos\n");
      menu();
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}

void menuVagonetas() {
  stdout.write("---- VAGONETAS ----\n");
  stdout.write("1.Agregar vagoneta\n");
  stdout.write("2.Listar vagonetas\n");
  stdout.write("3.Regresar\n");
  stdout.write("Elija una opcion:");
  String? valor = stdin.readLineSync();
  int x = int.parse(valor!);
  switch (x) {
    case 1:
      agregarVagoneta();
      menuVagonetas();
      break;
    case 2:
      listarVagoneta();
      menuVagonetas();
      break;
    case 3:
      stdout.write("Alamos\n");
      menu();
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}
