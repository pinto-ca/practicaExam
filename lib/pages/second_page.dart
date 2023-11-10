import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_practica_exam/resources/arguments.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    Arguments arguments = Arguments(resultado);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Resultado: ${arguments.resultado}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home),
        onPressed: () {
          //segunda pantalla
          Navigator.pop(context);
        },
      ),
    );
  }
}
