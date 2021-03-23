import 'package:flutter/material.dart';
import './resposta.dart';
import './questao.dart';
class Questionario extends StatelessWidget {

  final List<Map<String,Object>> perguntas;

  final int perguntaSelecionada;

  final void Function() responder;


  Questionario({
      @required this.perguntaSelecionada,
      @required this.perguntas,
      @required this.responder});

  bool get temPerguntaSelecionada{
    return perguntaSelecionada<perguntas.length;
  }


  @override
  Widget build(BuildContext context) {
    List<String> respostas= temPerguntaSelecionada ? perguntas[perguntaSelecionada]['respostas'] : null;
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((e) => Resposta(e,responder)).toList(),
      ],
    );
  }
}
