import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double divide = 0.0, multiply = 0.0, substract = 0.0, add = 0.0;
  bool switchVal = false;
  double sliderVal = 0;
  void calculate() {
    setState(() {
      double n1 = double.parse(num1.text);
      double n2 = double.parse(num2.text);
      divide = n1 / n2;
      multiply = n1 * n2;
      substract = n1 - n2;
      add = n1 + n2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: num1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)),
                  hintText: "123",
                  label: const Text("Enter number 1")),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: num2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)),
                  hintText: "123",
                  label: const Text("Enter number 2")),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
                onPressed: calculate, child: const Text("Calculate")),
            const SizedBox(
              height: 10,
            ),
            Text("Add: ${add.toString()}"),
            Text("Mul:  ${multiply.toString()}"),
            Text("Div: ${divide.toString()}"),
            Text("Sub: ${substract.toString()}"),
            const SizedBox(
              height: 10,
            ),
            Switch(
                value: switchVal,
                onChanged: (val) {
                  setState(() {
                    switchVal = val;
                  });
                }),
            const SizedBox(
              height: 10,
            ),
            Slider(
              max: 1.0,
              min: 0.0,
                value: sliderVal,
                onChanged: (val) {
                  setState(() {
                    sliderVal = val;
                  });
                }),
                Text("$sliderVal")
          ],
        ),
      ),
    );
  }
}
