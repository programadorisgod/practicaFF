import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 10.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Page')),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8.0)),
          _crearSlider(),
          _checkbox(),
          Expanded(child: _crearImagen()),
        ],
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.lime,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      thumbColor: Colors.black87,
      onChanged: _bloquearCheck
          ? null
          : (valor) {
              setState(() => _valorSlider = valor);
            },
    );
  }

  Widget _checkbox() {
    /*return Checkbox(
      value: _bloquearCheck,
      hoverColor: Colors.green,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor!;
        });
      },
    );*/

    return CheckboxListTile(
      value: _bloquearCheck,
      title: Text('Bloquear Slider'),
      onChanged: (valor) {
        setState(() => _bloquearCheck = valor!);
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://i.imgur.com/dUBRzZ2.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
