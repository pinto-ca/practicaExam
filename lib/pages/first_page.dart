import 'package:flutter/material.dart';
import 'package:flutter_practica_exam/resources/arguments.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String selected = 'Suma';
  double res = 0;

  void calcular(String num1, String num2) {
    double parsedNum1 = double.tryParse(num1) ?? 0;
    double parsedNum2 = double.tryParse(num2) ?? 0;

    setState(() {
      if (selected == 'Suma') {
        res = parsedNum1 + parsedNum2;
      }
      if (selected == 'Resta') {
        res = parsedNum1 - parsedNum2;
      }
      if (selected == 'Multiplicacion') {
        res = parsedNum1 * parsedNum2;
      }
      if (selected == 'Division') {
        res = parsedNum2 != 0 ? (parsedNum1 / parsedNum2) : 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController num1Controller = TextEditingController();
    TextEditingController num2Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 30),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: DropdownButton<String>(
                  value: selected,
                  onChanged: (String? newValue) {
                    setState(() {
                      selected = newValue!;
                    });
                  },
                  items: <String>['Suma', 'Resta', 'Multiplicacion', 'Division']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_right),
        onPressed: () {
          //segunda pantalla
          Navigator.pushNamed(context, 'page2', arguments: Arguments(res));
        },
      ),
    );
  }
}

class In extends StatelessWidget {
  const In({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
