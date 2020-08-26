import 'package:flutter/material.dart';

class Servicos extends StatefulWidget {
  @override
  _ServicosState createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Text("Página de Serviços"),
        ],
      ),
    );
  }
}
