import 'package:flutter/material.dart';

class HomePagTemp extends StatelessWidget {
  final options = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Flutter'),
      ),
      body: ListView(children: _createItems()),
    );
  }

  List<Widget> _createItems() {
    return options.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e),
            subtitle: Text('Number'),
            leading: Icon(Icons.contact_phone),
            trailing: Icon(Icons.keyboard_arrow_right),
            leadingAndTrailingTextStyle: TextStyle(inherit: false),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
