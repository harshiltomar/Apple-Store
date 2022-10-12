import 'package:codepur/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:codepur/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = 'Harshil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Text('Welcome to $days days of flutter by $name'),
      ),
      drawer: MyDrawer(),
    );
  }
}
