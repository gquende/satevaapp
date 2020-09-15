import 'package:flutter/material.dart';
import 'package:Mobile/classes/Strategy.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0, left: 20.0, right: 20.0),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: ThemeColors.secundaryColor,
                    borderRadius: BorderRadius.circular(20)),
                height: MediaQuery.of(context).size.height / 3.8,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[Text('Data')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
