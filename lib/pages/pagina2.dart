import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.watch<UsuarioCubit>();
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
              onPressed:(){
                final newUser = new Usuario(
                  nombre:'Martín Valenz',
                  edad:33,
                  profesiones: [
                    'Fullstack developer',
                    'Jugador del pinche fifa'
                  ]
                );
                usuarioCubit.seleccionarUsuario(newUser);
                Navigator.pushNamed(context,'pagina1');
              }
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