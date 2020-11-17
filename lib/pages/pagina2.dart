import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child:Text('Establecer usuario', style:TextStyle(color:Colors.white)),
              color:Colors.blue,
              onPressed:(){}
            ),
            MaterialButton(
              child:Text('Cambiar edad', style:TextStyle(color:Colors.white)),
              color:Colors.blue,
              onPressed:(){}
            ),
            MaterialButton(
              child:Text('Añadir profesión', style:TextStyle(color:Colors.white)),
              color:Colors.blue,
              onPressed:(){}
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context,'pagina1'),
      ),
   );
  }
}