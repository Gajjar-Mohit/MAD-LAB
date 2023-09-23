import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff1F2C34),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 50),
                    child: Row(
                      children: [
                        Text(
                          "WhatsApp",
                          style: TextStyle(
                              color: Colors.white.withOpacity(.6),
                              fontSize: 25),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              size: 30,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              size: 30,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon:  SizedBox(
                              height: 30,
                             child: Image.asset("assets/icon1.png"))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xff121B22),
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff647883),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Name of the person",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text("Message of the person"),
                      trailing: Column(
                        children: [
                          Text(
                            "9:20 am",
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
