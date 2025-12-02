import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Watcharapong Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var price = TextEditingController();
  var amount = TextEditingController();
  var change = TextEditingController();
  var receiveMoney = TextEditingController();

  double _total = 0;
  double _change = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Text("Change Calculation",
            style: TextStyle(fontFamily: "maaja", fontSize: 48, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.pink),
          ),
          Image.network('https://www.muchbetteradventures.com/magazine/content/images/size/w2000/2024/04/mount-everest-at-sunset.jpg', height: 120,),
          Image.asset("assets/CAMT-Logo.jpg", height: 120,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: priceTextField(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: amountTextField(),
          ),
          calculateButton(),
          showTotalText(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: receiveMoneyTextField(),
          ),
          changeCalculateButton(),
          showChangeText(),
        ],
      ),
    );
  }

  Widget priceTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: price,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "price per item"
        ),
      ),
    );
  }

  Widget amountTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: amount,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "amount of items"
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget calculateButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            if (price.text.isNotEmpty && amount.text.isNotEmpty) {
              setState(() {
                _total = double.parse(price.text) * double.parse(amount.text);
              });
            }
          },
          child: Text("Calculate Total")),
    );
  }

  Widget showTotalText() {
    return Text("Total : $_total Baht");
  }

  Widget receiveMoneyTextField() {
    return TextField(
      controller: receiveMoney,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "get money"
      ),
    );
  }

  Widget changeCalculateButton() {
    return ElevatedButton(
      onPressed: () {
        if (receiveMoney.text.isNotEmpty) {
          double inputMoney = double.parse(receiveMoney.text);

          if (inputMoney < _total) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("money is not enough"))
            );
          } else {
            setState(() {
              _change = inputMoney - _total;
            });
          }
        }
      },
      child: Text("Calculate Change"),);
  }

  Widget showChangeText() {
    return Text("Change : $_change Baht");
  }
}