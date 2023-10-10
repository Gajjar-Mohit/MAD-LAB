import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurent Tip Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Restaurent Tip Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double amount = 0.0;
  int groupValue = 0;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.store),
              title: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    hintText: "Cost of Service", border: OutlineInputBorder()),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.food_bank),
              title: Text('How was the service?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: groupValue,
                        onChanged: (val) {
                          setState(() {
                            groupValue = val!;
                          });
                        },
                      ),
                      const Text('Amazing (20%)'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: groupValue,
                        onChanged: (val) {
                          setState(() {
                            groupValue = val!;
                          });
                        },
                      ),
                      const Text('Good (18%)'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: groupValue,
                        onChanged: (val) {
                          setState(() {
                            groupValue = val!;
                          });
                        },
                      ),
                      const Text('Okay (15%)'),
                    ],
                  )
                ],
              ),
            ),
            ListTile(
                leading: const Icon(Icons.arrow_outward),
                title: const Text("Round up tip?"),
                trailing: Switch(value: false, onChanged: (val) {})),
            GestureDetector(
              onTap: () {
                if (groupValue == 0) {
                  setState(() {
                    amount = double.parse(controller.text) * 20 / 100;
                  });
                } else if (groupValue == 1) {
                  setState(() {
                    amount = double.parse(controller.text) * 18 / 100;
                  });
                } else if (groupValue == 3) {
                  setState(() {
                    amount = double.parse(controller.text) * 15 / 100;
                  });
                }
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(28)),
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Total Amount: $amount")
          ],
        ),
      ),
    );
  }
}
