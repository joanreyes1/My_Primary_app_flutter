import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State {
  //final estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My app'),
        elevation: 5.5,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Número de tabs:',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '$_conteo',
            style: const TextStyle(fontSize: 20),
          )
        ],
      )),
      floatingActionButton: _crearBotones(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(width: 30),
        FloatingActionButton(
          onPressed: _reset,
          child: const Icon(Icons.exposure_zero),
        ),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _sustraer,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 5.0),
        FloatingActionButton(
          onPressed: _agregar,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
