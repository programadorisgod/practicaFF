import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPage createState() => _AnimatedContainerPage();
}

class _AnimatedContainerPage extends State<AnimatedContainerPage> {
  double _widht = 50.0;
  double _height = 50.0;
  Color _color = Colors.greenAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(80.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _widht,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
          duration: const Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.rocket_launch),
        onPressed: () {
          setState(() {
            final random = Random();

            _widht = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromARGB(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
            );
            _borderRadius =
                BorderRadius.circular(random.nextInt(200).toDouble());
          });
        },
      ),
    );
  }
}
