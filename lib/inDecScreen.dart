import 'package:flutter/material.dart';

class InDecScreen extends StatelessWidget {
  const InDecScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DecScreen') ,
      ),
      body: Center(
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),


          ],
        ),
      ),
    );
  }
}
