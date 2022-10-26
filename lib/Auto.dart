class Auto {
  String? modelo;
  String? marca;
  int? placa;

  Auto(String modelo, String marca, int placa) {
    this.modelo = modelo;
    this.marca = marca;
    this.placa = placa;
  }

  get getModelo {
    return this.modelo;
  }

  get getMarca {
    return this.marca;
  }

  get getPlaca {
    return this.placa;
  }

  void set setModelo(String modelo) {
    this.modelo = modelo;
  }

  void set setMarca(String ma) {
    this.marca = marca;
  }

  void set setPlaca(int placa) {
    this.placa = placa;
  }
}
