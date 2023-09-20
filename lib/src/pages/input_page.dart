import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _date = '';
  String _optionSelected = 'X Ray';

  final List<String> _powers = [
    'Fly',
    'X Ray',
    'Super Breath',
    'Super Strength'
  ];

  final TextEditingController _inputFieldDateControler =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Page text'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _creteDate(context),
          Divider(),
          _createName(),
          Divider(),
          _createDropdown()
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Type here',
        labelText: 'Name',
        helperText: 'only name plase',
        icon: Icon(Icons.account_circle_rounded),
        suffixIcon: Icon(Icons.accessibility_new_outlined),
      ),
      textCapitalization: TextCapitalization.characters,
      onChanged: (text) {
        print(text);
        setState(() => _name = text);
      },
    );
  }

  Widget _createEmail() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Type here',
        labelText: 'Email',
        helperText: 'only email',
        icon: Icon(Icons.email_outlined),
        suffixIcon: Icon(Icons.alternate_email_rounded),
      ),
      keyboardType: TextInputType.emailAddress,
      onChanged: (text) {
        print(text);
        setState(() => _email = text);
      },
    );
  }

  Widget _createName() {
    return ListTile(
      title: Text('Name is : $_name'),
      subtitle: Text('Email is : $_email'),
    );
  }

  Widget _createPassword() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Type here',
        labelText: 'Password',
        helperText: 'only password',
        icon: Icon(Icons.password_outlined),
        suffixIcon: Icon(Icons.no_encryption_gmailerrorred),
      ),
      obscureText: true,
      onChanged: (text) {
        print(text);
        setState(() => _email = text);
      },
    );
  }

  Widget _creteDate(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: ' birth Date',
        labelText: 'birth Date',
        icon: Icon(Icons.date_range),
        suffixIcon: Icon(Icons.account_circle),
      ),
      controller: _inputFieldDateControler,
      enableInteractiveSelection: false,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  Future _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1830),
      lastDate: DateTime(2023, 19, 8),
      locale: Locale('es'),
    );
    if (picked != null) {
      setState(() {
        _date = '${picked.year}-${picked.month}-${picked.day}';
        _inputFieldDateControler.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    final List<DropdownMenuItem<String>> list = [];
    for (final power in _powers) {
      list.add(
        DropdownMenuItem(
          value: power,
          child: Text(power),
        ),
      );
    }
    return list;
  }

  Widget _createDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _optionSelected,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() => _optionSelected = opt!);
            },
          ),
        )
      ],
    );
  }
}
