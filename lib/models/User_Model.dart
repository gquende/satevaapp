import 'package:Mobile/models/core/DatabaseHelper.dart';

class User {
  int _id;
  String _username;
  String _password;
  String _imageUrl;
  User(this._id, this._username, this._password, this._imageUrl);
}

class UserModel {
  DatabaseHelper databaseHelperConexao;
}
