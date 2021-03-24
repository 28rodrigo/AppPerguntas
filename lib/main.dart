import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questionario.dart';
main(){
  runApp(PerguntaApp());
}
class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada= 0;
  var _pontuacaoTotal=0;
  final List<Map<String,Object>> _perguntas= const [
    {
      'texto':'Qual é a sua cor preferida?',
      'respostas':[
        {'texto':'preto','nota': 10 },
        {'texto':'vermelho','nota': 5 },
        {'texto':'verde','nota':3 },
        {'texto':'branco','nota':1},
        ]
    },
    {
      'texto':'Qual é o seu animal preferido?',
      'respostas':[
        {'texto':'coelho','nota': 10 },
        {'texto':'cobra','nota': 5 },
        {'texto':'elefante','nota':3 },
        {'texto':'leão','nota':1},
        ]
    },
    {
      'texto':'Qual é o seu clube preferido?',
      'respostas':[
      {'texto':'FCP','nota':800},
      {'texto':'5LB','nota':0},
      {'texto':'CDCD','nota':100},
      {'texto':'CDA','nota':10}]
    },

  ];

  void _responder(int pontuacao){
    if(temPerguntaSelecionada)
      {
        setState(() {
          _perguntaSelecionada++;
          _pontuacaoTotal+=pontuacao;
        });
      }
  }

  void _reiniciarPerguntas(){
    setState(() {
          _perguntaSelecionada=0;
          _pontuacaoTotal=0;
        });
  }
  bool get temPerguntaSelecionada{
    return _perguntaSelecionada<_perguntas.length;
  }


  @override
  Widget build(BuildContext context)
  {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Colors.blue,
        ),
        body: temPerguntaSelecionada ?
            Questionario(perguntas:_perguntas,perguntaSelecionada:_perguntaSelecionada,responder: _responder):
             Resultado(_pontuacaoTotal,_reiniciarPerguntas),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }



}