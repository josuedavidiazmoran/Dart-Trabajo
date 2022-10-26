import 'dart:io';

import 'Auto.dart';

class ALujo extends Auto {
  int? Pasajeros;
  ALujo(
      {required String modelo,
      required String marca,
      required int placa,
      required this.Pasajeros})
      : super(modelo, marca, placa);
  getAlll() {
    stdout.write(" Modelo:" +
        super.getModelo +
        " Marca:" +
        super.getMarca +
        " Placa:" +
        super.getPlaca.toString() +
        " Pasajeros:" +
        this.Pasajeros.toString());
  }
}
