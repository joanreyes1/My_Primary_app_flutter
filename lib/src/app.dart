import 'package:flutter/material.dart';
import 'package:my_app/src/pages/contador_page.dart';

//import 'package:my_app/src/pages/home_page.dart';

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
