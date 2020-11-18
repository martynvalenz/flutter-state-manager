import 'package:meta/meta.dart';

class Usuario {
  String nombre;
  int edad;
  List<String> profesiones;

  Usuario({@required this.nombre, @required this.edad, this.profesiones})
  : assert(nombre != null),
  assert(edad != null);
}