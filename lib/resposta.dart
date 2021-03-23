import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String _texto;

  final void Function() onSelection;

  Resposta(this._texto,this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(_texto),
        onPressed: onSelection,
      ),
    );
  }
}
