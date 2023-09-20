import 'package:componentes_futter/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import 'package:componentes_futter/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Flutter 2'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listItems(snapshot.data ?? [], context));
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    return data.map<Widget>((dynamic item) {
      final Map<String, dynamic> opt = item as Map<String, dynamic>;
      return Column(
        children: [
          ListTile(
            title: Text(opt['texto'].toString()),
            leading: getIcon(opt['icon'].toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              /*
                    MaterialPageRoute(builder: (context) => AlertPage());
                    Navigator.push(context, route); 
                    ESTO ES PARA CREAR UNA RUTA DIGAMOS QUE SEA ESTATICA.*/
              Navigator.pushNamed(context, opt['ruta'] as String);
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
