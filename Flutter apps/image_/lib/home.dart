import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool male = false;
  bool female = false;
  String ans = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  opacity: .5,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1690987866346-9973ed5f4f81?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=988&q=80'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1690921822670-5929218ab41d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60'),
                ),
                title: Text(
                  "Mohit Gajjar",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "gajjarmohit501@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(22)),
                  child: Column(
                    children: [
                      Image.asset('assets/robot.png'),
                      TextField(
                        controller: TextEditingController(),
                        onChanged: (val) {},
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: "mohit",
                          label: Text("Enter name"),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                        ),
                      ),
                      RadioListTile(
                          selected: true,
                          toggleable: true,
                          fillColor:
                              const MaterialStatePropertyAll(Colors.white),
                          value: "Male",
                          title: const Text(
                            "Male",
                            style: TextStyle(color: Colors.white),
                          ),
                          groupValue: ans,
                          onChanged: (val) {
                             setState(() {
                              ans = val!;
                            });
                          }),
                      RadioListTile(
                          // selected: true,
                          // toggleable: true,
                          fillColor:
                              const MaterialStatePropertyAll(Colors.white),
                          value: "Female",
                          title: const Text(
                            "Female",
                            style: TextStyle(color: Colors.white),
                          ),
                          groupValue: ans,
                          onChanged: (val) {
                            setState(() {
                              ans = val!;
                            });
                          }),
                    ],
                  )),
            ],
          )),
    );
  }
}
