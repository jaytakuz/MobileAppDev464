import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {

  var price = TextEditingController();
  var amount = TextEditingController();
  var change = TextEditingController();
  var receiveMoney = TextEditingController();

  double _total = 0;
  double _change = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Change Calculation",
            style: TextStyle(fontFamily: "maaja", fontSize: 48, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.blue, backgroundColor: Colors.pink),),
          SizedBox(height: 10,),
          Image.network('https://www.muchbetteradventures.com/magazine/content/images/size/w2000/2024/04/mount-everest-at-sunset.jpg', height: 120,),
          SizedBox(height: 10,),
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