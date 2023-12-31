import 'package:flutter/material.dart';
import 'package:myapp/kartoffel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const Kartoffel();
          }));
        },
        child: const Text("Kartoffel"),
      ),
    );
  }
}
