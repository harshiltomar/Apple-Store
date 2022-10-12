import 'package:codepur/models/catalog.dart';
import 'package:codepur/widgets/drawer.dart';
import 'package:codepur/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:codepur/models/catalog.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = 'Harshil';
  final dummylist = List.generate(50, (index) => CatalogModel.items[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(itemCount: dummylist.length,
          itemBuilder: (context, index) {
             return ItemWidget(item: dummylist[index],);
          },
          ),
      ),
      drawer: MyDrawer(),
    );
  }
}
