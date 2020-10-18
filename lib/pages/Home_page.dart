import 'package:Mobile/classes/Strategy.dart';
import 'package:Mobile/pages/overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indexNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image(
                    width: 120,
                    image: AssetImage('assets/img/satevaLogo.png'),
                  ),
                  FlatButton(
                    child: CircleAvatar(
                      child: Image(
                        image: AssetImage('assets/img/satevaLogo.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        backgroundColor: ThemeColors.secundaryColor,
      ),
      backgroundColor: ThemeColors.primaryColor,
      body: Overview(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _indexNavigation,
        onTap: (index) {
          navegandoPeloIndex(index);
        },

        backgroundColor: ThemeColors.secundaryColor,
        //fixedColor: Colors.black,
        //unselectedItemColor: Colors.white,
        //selectedFontSize: 15.8,
        elevation: 2.0,
        selectedItemColor: ThemeColors.menuColorPrimary,
        selectedLabelStyle: TextStyle(color: ThemeColors.menuColorPrimary),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text(
                'Resumo',
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up),
              title: Text(
                'Estatistica',
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              title: Text(
                'Cartões',
                //style: TextStyle(fontSize: 12),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.flag),
              title: Text(
                'Metas',
                //style: TextStyle(fontSize: 12),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemeColors.menuColorPrimary,
        child: Icon(Icons.add),
      ),
    );
  }

  void navegandoPeloIndex(int index) {
    setState(() {
      _indexNavigation = index;
    });
    print(index);
  }
}
