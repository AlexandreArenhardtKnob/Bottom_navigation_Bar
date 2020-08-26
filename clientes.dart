import 'package:flutter/material.dart';

class Clientes extends StatefulWidget {
  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Text("Página de Clientes"),
          Container(
            color: Colors.greenAccent,
            height: 200,
            width: 200,
          ),
        ],
      ),
    );
  }
}
