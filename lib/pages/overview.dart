import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Mobile/classes/Strategy.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    var larguraTela = MediaQuery.of(context).size.width;
    var alturaTela = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 28.0, left: 20.0, right: 20.0),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              //Primeiro conteiner
              Container(
                decoration: BoxDecoration(
                    color: ThemeColors.secundaryColor,
                    borderRadius: BorderRadius.circular(10)),
                height: MediaQuery.of(context).size.height / 3.8,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //Dropdown para seleccionar o mes
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Setembro de 2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Património',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        '3.000,00 AOA',
                        style: TextStyle(fontSize: 26, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 16.0),
                      //Conteiners de Receitas, despesa, e dividas
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          //Conteiner de Receitas
                          Container(
                            width: larguraTela / 4.5,
                            height: alturaTela / 18,
                            decoration: BoxDecoration(
                                color: Color(0xFF1E4632),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Receitas',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Text(
                                    '3000',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //Conteiner das despesas
                          Container(
                            width: larguraTela / 4.5,
                            height: alturaTela / 18,
                            decoration: BoxDecoration(
                                color: Color(0xFF652C2C),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Despesas',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Text(
                                    '3000',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //Conteinerdas dividas
                          Container(
                            width: larguraTela / 4.5,
                            height: alturaTela / 18,
                            decoration: BoxDecoration(
                                color: Color(0xFF914300),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Dividas',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Text(
                                    '3000',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: larguraTela / 2.5,
                    height: alturaTela / 5.5,
                    decoration: BoxDecoration(
                        color: ThemeColors.secundaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.credit_card,
                            size: larguraTela / 6,
                            color: ThemeColors.menuColorPrimary,
                          ),
                          Text(
                            'Cartoes de Debito',
                            style: TextStyle(
                                color: ThemeColors.textColor, fontSize: 12),
                          ),
                          Text(
                            '2000,00 AOA',
                            style:
                                TextStyle(color: ThemeColors.menuColorPrimary),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: larguraTela / 2.5,
                    height: alturaTela / 5.5,
                    decoration: BoxDecoration(
                        color: ThemeColors.secundaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.save_alt,
                            size: larguraTela / 6,
                            color: ThemeColors.menuColorPrimary,
                          ),
                          Text(
                            'Poupanças',
                            style: TextStyle(
                                color: ThemeColors.textColor, fontSize: 12),
                          ),
                          Text(
                            '2000,00 AOA',
                            style:
                                TextStyle(color: ThemeColors.menuColorPrimary),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: larguraTela / 2.5,
                    height: alturaTela / 5.5,
                    decoration: BoxDecoration(
                        color: ThemeColors.secundaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.show_chart,
                            size: larguraTela / 6,
                            color: ThemeColors.menuColorPrimary,
                          ),
                          Text(
                            'Investimentos',
                            style: TextStyle(
                                color: ThemeColors.textColor, fontSize: 12),
                          ),
                          Text(
                            '2000,00 AOA',
                            style:
                                TextStyle(color: ThemeColors.menuColorPrimary),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: larguraTela / 2.5,
                    height: alturaTela / 5.5,
                    decoration: BoxDecoration(
                        color: ThemeColors.secundaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.spa,
                            size: larguraTela / 6,
                            color: ThemeColors.menuColorPrimary,
                          ),
                          Text(
                            'Fundo de Emergência',
                            style: TextStyle(
                                color: ThemeColors.textColor, fontSize: 12),
                          ),
                          Text(
                            '2000,00 AOA',
                            style:
                                TextStyle(color: ThemeColors.menuColorPrimary),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
