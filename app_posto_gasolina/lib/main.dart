import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gasolina x Álcool',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double valorGasolina = 0.0;
  double valorAlcool = 0.0;
  double resultado = 0.0;

  void calcular() {
    setState(() {
      resultado = valorAlcool / valorGasolina * 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Posto de Gasolina'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'data:image/png;base64,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',
              height: 200,
              width: 200,
            ),
            
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Center (
                  child: Text('Valor da Gasolina')
                ),
              ),
              onChanged: (value) {
                setState(() {
                  valorGasolina = double.parse(value);
                });
              },
            ),
            
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Center (
                  child: Text('Valor do Álcool')
                ),
              ),
              onChanged: (value) {
                setState(() {
                  valorAlcool = double.parse(value);
                });
              },
            ),
            SizedBox(height: 2,width: 2),
            ElevatedButton(
              onPressed: calcular,
              child: Text('Calcular'),
            ),
            SizedBox(height: 2,width: 2),
            Text(resultado >= 70 ? 'É Melhor Abastecer com Alcool' : 'É Melhor Abastecer com Gasolina'),
          ],
        ),
      ),
    );
  }
}