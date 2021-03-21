import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String _texto;

  Resposta(this._texto);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(_texto),
      onPressed: null,
    );
  }
}
