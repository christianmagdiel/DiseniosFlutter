import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = TextStyle(fontSize: 15.0, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(   
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('PAGINAS', style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),),
            _crearBoton('Basica', context, 'basico'),
            _crearBoton('Scroll', context,'scroll' ),
            _crearBoton('Botones', context, 'botones'),
          ],
        ),
      ),
    );
  }

  Widget _crearBoton(String texto, BuildContext context, String ruta){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: RaisedButton(
                shape: StadiumBorder(),
                color: Colors.purple,
                child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
                  child: Text(texto, style: estiloTexto),
                ),
                onPressed: ()  => Navigator.pushNamed(context, ruta)
      ),
    );
  }
}