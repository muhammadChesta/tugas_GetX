import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list') ,
      ),
      body: Center(
        child: Text("ini halaman list data"),
      ),

    );
  }
}
