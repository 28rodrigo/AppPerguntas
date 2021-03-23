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

  }

  @override
  Widget build(BuildContext context)
  {
    final List<Map<String,Object>> perguntas=[
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
    List<String> respostas= perguntas[_perguntaSelecionada]['respostas'];
    List<Widget> respostaswidgets=[];
    for(var textoresp in respostas)
    {
      respostas.add(Resposta(textoresp,_responder));
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas
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