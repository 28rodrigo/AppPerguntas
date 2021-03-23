import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questionario.dart';
main(){
  runApp(PerguntaApp());
}
class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada= 0;
  final List<Map<String,Object>> _perguntas= const [
    {
      'texto':'Qual é a sua cor preferida?',
      'respostas':['preto','vermelho','verde','branco']
    },
    {
      'texto':'Qual é o seu animal preferido?',
      'respostas':['coelho','cobra','elefante','leão']
    },
    {
      'texto':'Qual é o seu clube preferido?',
      'respostas':['FCP','5LB','CDCD','CDA']
    },

  ];

  void _responder(){
    if(temPerguntaSelecionada)
      {
        setState(() {
          _perguntaSelecionada++;
        });
      }
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
             Resultado(),
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