import 'package:card/dashboard.dart';
import 'package:flutter/material.dart';

class Curr extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Curr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DashboardPage(
            currencyVal: 0.0,
            convertedCurrency: 0.0,
            currencyone: 'USD',
            currencytwo: 'RUB',
            isWhite: false));
  }
}
