import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'android': Icons.android,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input': Icons.input_outlined,
  'tune': Icons.tune_outlined,
  'list': Icons.list
};

Icon getIcon(String nameIcon) {
  return Icon(_icons[nameIcon], color: Colors.blue[200]);
}
