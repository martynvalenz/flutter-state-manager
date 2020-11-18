import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context, listen:true);
    return Scaffold(
      appBar:AppBar(
        title: usuarioService.existeUsuario
          ? Text('Usuario: ${usuarioService.usuario.nombre}')
          : Text('Sin usuario')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child:Text('Establecer usuario', style:TextStyle(color:Colors.white)),
              color:Colors.blue,
              onPressed:(){
                final newUser = new Usuario(
                  nombre:'Martín Valenz',
                  edad:34,
                  profesiones: [
                    'Fullstack developer',
                    'video jugador experto'
                  ]
                );
                usuarioService.usuario = newUser;
              }
            ),
            MaterialButton(
              child:Text('Cambiar edad', style:TextStyle(color:Colors.white)),
              color:Colors.blue,
              onPressed:(){
                usuarioService.cambiarEdad(45);
              }
            ),
            MaterialButton(
              child:Text('Añadir profesión', style:TextStyle(color:Colors.white)),
              color:Colors.blue,
              onPressed:(){
                usuarioService.agregarProfesion();
              }
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