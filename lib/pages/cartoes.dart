import 'package:Mobile/widgets/cartao_credito.dart';
import 'package:flutter/material.dart';

class Cartoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Cartao(),
            SizedBox(
              height: 10,
            ),
            Cartao(),
            SizedBox(
              height: 10,
            ),
            Cartao(),
            SizedBox(
              height: 10,
            ),
            Cartao(),
            SizedBox(
              height: 10,
            ),
            Cartao(),
          ],
        ),
      ),
    );
  }
}
