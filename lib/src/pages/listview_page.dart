import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  final List<int> _listaNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 14, 20, 26, 29, 40];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: _crearList(),
    );
  }

  Widget _crearList() {
    return ListView.builder(
      itemCount: _listaNumeros.length,

      itemBuilder: (BuildContext context, int index) {
        return FadeInImage(
          placeholder: AssetImage('assets/loading-5.gif'),
          image: NetworkImage('https://picsum.photos/500/300/?image=$index'),
          
        );
      },
    );
  }
}
