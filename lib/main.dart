import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
main(){
  runApp(PerguntaApp());
}
class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada= 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context)
  {
    final perguntas=[
      'Qual é a sua cor preferida?',
      'Qual é o seu animal preferido?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta1'),
            Resposta('Resposta2'),
            Resposta('Resposta3')
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
    throw UnimplementedError();
  }



}