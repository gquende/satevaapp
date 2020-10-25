import 'package:flutter/material.dart';

class Cartao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('Cartao'), Icon(Icons.edit)],
            ),
            Column(
              children: <Widget>[
                Text('93949506. AOA'),
                Text('Data de Expericao')
              ],
            )
          ],
        ),
      ),
    );
  }
}
