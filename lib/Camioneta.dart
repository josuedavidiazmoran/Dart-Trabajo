import 'dart:io';

import 'Auto.dart';

class Camioneta extends Auto {
  int? Carga;
  Camioneta(
      {required String modelo,
      required String marca,
      required int placa,
      required this.Carga})
      : super(modelo, marca, placa);
  getAlll() {
    stdout.write(" Modelo:" +
        super.getModelo +
        " Marca:" +
        super.getMarca +
        " Placa:" +
        super.getPlaca.toString() +
        " Pasajeros:" +
        this.Carga.toString());
  }
}
