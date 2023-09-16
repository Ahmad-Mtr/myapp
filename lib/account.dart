import 'package:flutter/material.dart';

int itemCount = 20;

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${(index + 1)}'),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.select_all),
          onTap: () {
            debugPrint('Item ${index + 1} selected');
          },
        );
      },
    );
  }
}
