import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      margin: EdgeInsets.all(2.0),
      elevation: 6.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('HOLA UWU'),
            subtitle: Text(
                'Soy un texto cualquiera que esta aqui creada como con 200 lineas de codigo para solo esta vaina pequeña, pale risa compae :v '),
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue[200],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Cancel')),
              TextButton(onPressed: () {}, child: Text('Acept'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Column(
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/loading-2.gif'),
          image: NetworkImage(
            'https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/03/acj-2003-beautiful-landscapes-around-the-world-og.jpg',
          ),
          fadeInDuration: Duration(seconds: 2),
          height: 250.0,
          fit: BoxFit.cover,
        ),
        Text('Qué se pone aquí'),
        Container(padding: EdgeInsets.all(12.0)),
      ],
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.white70,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black54,
            blurRadius: 10.0,
            offset: Offset(2.0, 10.0),
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: card,
      ),
    );
  }
}
