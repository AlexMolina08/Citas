import 'package:flutter/material.dart';
import 'Cita.dart';

void main() => runApp(MaterialApp(
  home:ListaDeCitas(),
));


class ListaDeCitas extends StatefulWidget {
  @override
  _ListaDeCitasState createState() => _ListaDeCitasState();
}

class _ListaDeCitasState extends State<ListaDeCitas> {

  List<Cita> citas=[ Cita(autor:"Federico García Lorca",texto:"Desechad tristezas y melancolías. La vida es amable, tiene pocos días y tan sólo ahora la hemos de gozar"),
    Cita(autor:"Federico García Lorca",texto:"La noche no quiere venir para que tú no vengas, ni yo pueda ir. Pero yo iré, aunque un sol de alacranes me coma la sien"),
    Cita(autor:"Federico García Lorca",texto:"La traducción destroza el espíritu del idioma"),
    Cita(autor:"Federico García Lorca",texto:"El que quiere arañar la luna, se arañará el corazón.")
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar:AppBar(
        centerTitle: true,
        title: Text("Frases Célebres"),
        backgroundColor: Colors.black,
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:citas.map(
            (cita) => Text("${cita.texto} - ${cita.autor}")
        ).toList()

      )

    );
  }
}