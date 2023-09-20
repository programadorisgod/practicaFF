import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Alert'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarAlert(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple[400],
            shape: StadiumBorder(),
          ),
          child: Text('View Alert'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('¿Vas a venderme el alma verdad?'),
          content: const Text(
              'Aceptas los terminos y condiciones, no nos hacemos responsables si se te quema el telefono por usar nuestra aplicacion. Acepta terminos y condiciones copyrigth 2023 ©  '),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed('card'),
              child: const Text('Accept'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Decline'),
            )
          ],
        );
      },
    );
  }
}
