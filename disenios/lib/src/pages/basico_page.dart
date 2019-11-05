import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _showImage(),
          _showImageTitulo(),
          _showOptions(),
          _showDescription(),
          _showDescription(),
          _showDescription()
        ],
        ),
      )
    );
  }

 Widget _showImage() {
   return  Container(
     width: double.infinity,
     child: Image(
        image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        height: 200.0,
        fit: BoxFit.cover,
  ),
   );
 }

 Widget _showImageTitulo() {
    return SafeArea(
              child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[ 
                        Text('Lago con un puente', style: estiloTitulo),
                        SizedBox(height: 7.0,),
                        Text('Un famoso lago de Alemania', style: estiloSubTitulo),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star, color: Colors.red, size: 30.0,
                  ),
                  Text('41', style: TextStyle(fontSize: 20.0),)
                ],
              ),
      ),
   );
 }

 Widget _showOptions() {
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: <Widget>[
      _crearOpcion(Icons.call, 'CALL'),
      _crearOpcion(Icons.near_me, 'ROUTE'),
      _crearOpcion(Icons.share, 'SHARE'),
     ],
   );
 }

 Widget _crearOpcion(IconData icon, String texto){
   return  Column(
          children: <Widget>[
           Icon(icon, color: Colors.blue, size: 40.0,),
           SizedBox(height: 5.0,),
           Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
          ],
  );
 }

 Widget _showDescription() {
   return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Text(
         'Mollit esse ad enim ipsum elit sint officia nostrud aliquip cupidatat ullamco. Enim ipsum veniam incididunt laborum anim magna est elit aliqua dolor amet velit nostrud ullamco. Minim exercitation velit eiusmod quis voluptate magna proident.',
         textAlign: TextAlign.justify,
       ),
     ),
   );
 }
}