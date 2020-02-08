import 'dart:io';
import 'dart:async';
import 'dart:convert';


class Cita{
  String texto , autor;
  Cita({this.texto , this.autor});
}

/*
  *Esta funcion lee un archivo de texto y devuelve una lista de Citas
  * Formato de las citas: "frase-autor"
*/
List<Cita> leeCitas(File file){
  bool existe = file.existsSync();
  List<Cita> citas = new List<Cita>();

  if(existe){
    for(final citaTexto in file.readAsLinesSync()){
      String texto = citaTexto.substring(0,citaTexto.indexOf("-"));
      String autor = citaTexto.substring(citaTexto.indexOf("-"),citaTexto.length);
      citas.add(new Cita(texto:texto,autor:autor));
    }
  }
  return citas;

}

void main(){
  File file = new File(Directory.current.path+"\\files\\citas.txt");

  List<Cita> citas = leeCitas(file);

 for(final cita in citas)
    print("Frase:${cita.texto}**Autor:${cita.autor}");


}