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


  Widget citaToCard(cita){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child:Column(
          children: <Widget>[
            Text(
              cita.texto,
              style:TextStyle(
                fontSize: 18.0,
                color:Colors.grey[800]
              ),
            ),

            SizedBox(height: 6.0),

            Text(
              cita.autor,
              style:TextStyle(
                color:Colors.grey[400]
                  )
            )

          ],
        )
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar:AppBar(
        centerTitle: true,
        title: Text("Frases Célebres"),
        backgroundColor: Colors.black,
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:citas.map(
            (cita) => citaToCard(cita)
        ).toList()

      )

    );
  }
}
