import 'package:flutter/material.dart';
import 'Cita.dart';


/*
* Un widget de tipo QuoteCard crea un Widget Card a partir de un objeto de tipo Cita
* */
class QuoteCard extends StatelessWidget {

  /*Los Stateless Widgets no pueden tener datos que cambien con
  El tiempo, por eso el atributo cita debe de ser final*/

  final Cita cita;
  final Function elimina;
  QuoteCard({this.cita,this.elimina});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
        child: Column(
          children: <Widget>[
            Text(
              cita.texto,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.grey[800]
              ),
            ),

            SizedBox(height: 6.0),

            //Metemos en una fila el texto del autor para ponerlo a la izquierda
            //de la Tarjeta
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                    cita.autor,
                    style: TextStyle(
                        color: Colors.grey[400]
                    )
                ),

                SizedBox(height: 8.0),

                FlatButton.icon(
                  onPressed: elimina,
                  icon: Icon(Icons.delete),
                  label: Text("Eliminar")
                )

              ],
            )
          ],
        )
    );
  }
}