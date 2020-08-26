import 'package:flutter/material.dart';
import 'produtos.dart';
import 'servicos.dart';
import 'clientes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String tituloPagina="Home";
  int paginaCorrente=0;

  final List<Widget> paginas = [
      Inicio(),
      Produtos(),
      Servicos(),
      Clientes(),
      Contato()
  ];

  void quandoPressionado(int index) {
    setState(() {
      paginaCorrente = index;
      if (paginaCorrente == 0) {
        tituloPagina = "Home";
      } else if (paginaCorrente == 1) {
        tituloPagina = "Produtos";
      } else if (paginaCorrente == 2) {
        tituloPagina = "Serviços";
      } else if (paginaCorrente == 3) {
        tituloPagina = "Clientes";
      } else if (paginaCorrente == 3) {
        tituloPagina = "Contato";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tituloPagina),
        centerTitle: true,
      ),
      body: paginas[paginaCorrente],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blueGrey,
        onTap: quandoPressionado,
        currentIndex: paginaCorrente,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text("Produtos"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            title: Text("Serviços"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            title: Text("Clientes"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            title: Text("Contato"),
          ),
        ],
      ),

    );
  }
}

//////////////////////////////////////
class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          child: Text("Página Inicial"),
        )

      ],
    );
  }
}

//////////////////

class Contato extends StatefulWidget {
  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Text("Contato"),
        ],
      ),
    );
  }
}
