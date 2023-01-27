import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:appcanchas/vistas/recursos/page/Menu.dart';
import 'package:appcanchas/vistas/recursos/page/first.dart';
import 'package:appcanchas/vistas/recursos/page/home.dart';
import 'package:appcanchas/vistas/vista/list.dart';
//import 'package:menuweb/src/page/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: list(),
    );
  }
}

class HiddenDrawer extends StatefulWidget {
   const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State <HiddenDrawer> createState() => _HiddenDrawerState();

}

class _HiddenDrawerState extends State<HiddenDrawer> {

  List<ScreenHiddenDrawer> _page=[];
  
  void initState(){
  
    super.initState(); 
    
    _page = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name:'Home ',
          baseStyle: TextStyle( fontWeight: FontWeight.bold,
              color: Colors.white
          ),
            selectedStyle: TextStyle(),
          colorLineSelected: Colors.white
        ),
        list(),

      ),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name:'vistas ',
          baseStyle: TextStyle( fontWeight: FontWeight.bold,
              color: Colors.white
          ),
          selectedStyle: TextStyle(),
            colorLineSelected: Colors.white
        ),
        Menu(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name:'documentacion',
          baseStyle: TextStyle( fontWeight: FontWeight.bold,
          color: Colors.white
          ),
          selectedStyle: TextStyle(),
            colorLineSelected: Colors.white

        ),
        FirstPage(),
      ),

  ];
    }

  @override
  Widget build(BuildContext context) {

    return HiddenDrawerMenu(
        screens: _page,
        backgroundColorMenu: Colors.blue ,
        initPositionSelected: 0,
      slidePercent: 35,
      contentCornerRadius: 40,
      boxShadow: [],

    );

  }
    
  }

