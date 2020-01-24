import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/pages/avatar.dart';
import 'package:componentes/src/pages/home.dart';
import 'package:componentes/src/pages/card.dart';
import 'package:componentes/src/pages/animated_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes(){

  return <String, WidgetBuilder>{
    '/' : ( BuildContext context ) => Home(), //esta sera la ruta inicial
    'alert' : ( BuildContext context ) => AlertP(),//esta como su nombre lo dice
    'avatar' : ( BuildContext context ) => AvatarP(),//esta igual
    'card' : (BuildContext context) => CardPage(),
    'animated' : (BuildContext context) => AnimatedPage(),
  
  };

} 