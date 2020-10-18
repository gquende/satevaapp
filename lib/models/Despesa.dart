import 'package:Mobile/models/core/DatabaseHelper.dart';

class Despesa {
  int id;
  int idUser;
  String valor;

  Despesa({this.id, this.idUser, this.valor});
}

class DespesaModel {
  Despesa despesa;
  DatabaseHelper databaseHelperConexao;

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = despesa.id;
    map['idUser'] = despesa.idUser;
    map['valor'] = despesa.valor;
    return map;
  }
}
