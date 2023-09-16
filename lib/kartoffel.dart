import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Kartoffel extends StatefulWidget {
  const Kartoffel({super.key});

  @override
  State<Kartoffel> createState() => _KartoffelState();
}

class _KartoffelState extends State<Kartoffel> {
  bool isSwitch = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kartoffel"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('ACtoimn');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/ichbineinekartoffel.png'),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Colors.black54,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "This is a Potato",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.amber : Colors.blue,
              ),
              onPressed: () {
                debugPrint('debug Batatata');
              },
              child: const Text('Batata Button1'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('debug Batatata');
              },
              child: const Text('Batata Button2'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('debug Batatata');
              },
              child: const Text('Batata Button3'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('Text Button');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text('Fried Me is 🔥 :))'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isChecked,
                onChanged: (bool? newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                }),
            Image.network(
                'https://images.unsplash.com/photo-1518977676601-b53f82aba655?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80')
          ],
        ),
      ),
    );
  }
}
