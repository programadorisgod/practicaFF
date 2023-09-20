import 'package:componentes_futter/src/pages/animated_container.dart';
import 'package:componentes_futter/src/pages/input_page.dart';
import 'package:componentes_futter/src/pages/listview_page.dart';
import 'package:componentes_futter/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes_futter/src/pages/card_pages.dart';
import 'package:componentes_futter/src/pages/alert_page.dart';
import 'package:componentes_futter/src/pages/avatar_page.dart';
import 'package:componentes_futter/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (context) => InputPage(),
    'slider': (context) => SliderPage(),
    'list': (context) => ListaPage()
  };
}
