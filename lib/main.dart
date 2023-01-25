
import 'package:flutter/material.dart';
import 'package:appcanchas/hidden_drawer_menu.dart';



void main()=> runApp(MyApp());


/*
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}
*/
//=> runApp(MyApp());

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HiddenDrawer(),
        theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}