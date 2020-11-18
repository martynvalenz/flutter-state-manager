import 'package:estados/bloc/usuario/usuario_bloc.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Pagina 1'),
      ),
      body: BlocBuilder<UsuarioBloc, UsuarioState>(
        builder: (_, state) {
          if(state.existeUsuario) {
            return InformacionUsuario(state.usuario);
          } 
          else {
            return Center(
              child:Text('No hay usuario seleccionado')
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.accessibility_new_rounded),
        onPressed: () => Navigator.pushNamed(context,'pagina2'),
      ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const InformacionUsuario(this.usuario);
  @override
  Widget build(BuildContext context) {
    return Container(
      height:double.infinity,
      width: double.infinity,
      padding:EdgeInsets.all(20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('General', style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(title:Text('Nombre: ${usuario.nombre}')),
          ListTile(title:Text('Edad: ${usuario.edad}')),
          SizedBox(height:15),
          Text('Profesiones', style:TextStyle(fontSize: 18, fontWeight:FontWeight.bold)),
          Divider(),
          ...usuario.profesiones.map(
            (profesion) => ListTile(title:Text(profesion))
          ).toList()
        ]
      )
    );
  }
}