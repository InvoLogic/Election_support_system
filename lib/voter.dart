import 'package:ess/main.dart';
import 'package:flutter/material.dart';

class voters extends StatefulWidget {
  const voters({super.key});

  @override
  State<voters> createState() => _votersState();
}

class _votersState extends State<voters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: show,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Voter list'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView(),
      ),
    );
  }
}
