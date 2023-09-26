import 'package:flutter/material.dart';
import 'package:text_sum/api_interface.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();
  bool isLoading = false;
  String text = "";
  ApiInterface apiInterface = ApiInterface();
  TextEditingController textEditingController = TextEditingController();
  void getData()async {
    setState(() {
      isLoading = true;
    });
   await apiInterface.getData(textEditingController.text).then((value) {
      print(value[0]['summary_text']);

      setState(() {
        text = value[0]['summary_text'];
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Text Summarizer",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          label: const Text("Enter the text")),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(text)
                  ],
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (textEditingController.text.isNotEmpty) {
              getData();
            }
          },
          label: const Text("Summarize")),
    );
  }
}
// The tower is 324 metres (1,063 ft) tall, about the same height as an 81-storey building, and the tallest structure in Paris. Its base is square, measuring 125 metres (410 ft) on each side. During its construction, the Eiffel Tower surpassed the Washington Monument to become the tallest man-made structure in the world, a title it held for 41 years until the Chrysler Building in New York City was finished in 1930. It was the first structure to reach a height of 300 metres. Due to the addition of a broadcasting aerial at the top of the tower in 1957, it is now taller than the Chrysler Building by 5.2 metres (17 ft). Excluding transmitters, the Eiffel Tower is the second tallest free-standing structure in France after the Millau Viaduct.