import 'package:Mobile/classes/Strategy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      backgroundColor: ThemeColors.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Image(
                      width: 200,
                      image: AssetImage(
                        'assets/img/satevaLogo.png',
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        fontSize: 12, color: ThemeColors.menuColorPrimary),
                    controller: _usernameController,
                    cursorColor: ThemeColors.menuColorPrimary,
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(
                          CupertinoIcons.person,
                          size: 30,
                          color: Color(0xFF087622),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF087622)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(11))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF0BBE35)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(11))),
                        fillColor: ThemeColors.secundaryColor,
                        focusColor: Colors.red,
                        hoverColor: Colors.red,
                        labelText: 'Nome do Utilizador',
                        labelStyle: TextStyle(color: Color(0xFF087622)),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28, right: 28),
                  child: TextFormField(
                    cursorColor: ThemeColors.menuColorPrimary,
                    obscureText: true,
                    style: TextStyle(
                        fontSize: 12, color: ThemeColors.menuColorPrimary),
                    controller: _passwordController,
                    decoration: InputDecoration(
                        focusColor: ThemeColors.menuColorPrimary,
                        filled: true,
                        prefixIcon: Icon(CupertinoIcons.padlock,
                            color: Color(0xFF087622)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF087622)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(11))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF0BBE35)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(11))),
                        fillColor: ThemeColors.secundaryColor,
                        labelText: 'Palavra passe',
                        labelStyle: TextStyle(color: Color(0xFF087622)),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: ThemeColors.menuColorPrimary),
                    height: 56,
                    //color: menuColor,
                    child: SizedBox.expand(
                      child: FlatButton(
                        onPressed: () => _login(
                            _usernameController.text, _passwordController.text),
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                              fontSize: 16, color: ThemeColors.secundaryColor),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _login(String username, String password) {
    print('$username and $password');
    var teste = true;
    if (teste) {}
  }
}
